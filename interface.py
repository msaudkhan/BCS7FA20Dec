import argparse
import cv2
import math
import sys
import time
import torch
import numpy as np
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QPushButton, QFileDialog, QLabel, QTextEdit, QMainWindow, QMessageBox
from PyQt5.QtGui import QPixmap

class Ui_MainWindow(object):
    def start(self):
        self.stackedWidget.setCurrentIndex(1)

    @staticmethod
    def getFaceBox(net, frame, conf_threshold=0.7):
        frameOpencvDnn = frame.copy()  # create a copy of the original frame
        frameHeight = frameOpencvDnn.shape[0]  # get the height of the frame
        frameWidth = frameOpencvDnn.shape[1]  # get the width of the frame
        blob = cv2.dnn.blobFromImage(frameOpencvDnn, 1.0, (300, 300), [104, 117, 123], True, False)
        net.setInput(blob)  # pass the input image through the FaceNet, blob is of shape (1, 3, 300, 300)
        detections = net.forward()  # apply forward pass
        bboxes = []  # create empty bounding box list
        for i in range(detections.shape[2]):
            confidence = detections[0, 0, i, 2]  # get the bounding box confidence level

            # if the confidence is > 0.7 then get the top left and bottom right (x,y) co-ordinates
            if confidence > conf_threshold:
                x1 = int(detections[0, 0, i, 3] * frameWidth)  # top left x co-ordinate
                y1 = int(detections[0, 0, i, 4] * frameHeight)  # top left y co-ordinate
                x2 = int(detections[0, 0, i, 5] * frameWidth)  # bottom right x co-ordinate
                y2 = int(detections[0, 0, i, 6] * frameHeight)  # bottom right y co-ordinate
                bboxes.append(
                    [x1, y1, x2, y2])  # append the co-ordinates list computed above in the bounding box list

                # draw a rectangle around the face and return the original image along with bounding box co-ordinates
                cv2.rectangle(frameOpencvDnn, (x1, y1), (x2, y2), (0, 255, 0), int(round(frameHeight / 150)), 8)

        return frameOpencvDnn, bboxes

    def caffe(self):
        cap = cv2.VideoCapture(self.args.input if self.args.input else 0)

        padding = 20
        while cv2.waitKey(1) < 0:
            t = time.time()
            hasFrame, frame = cap.read()

            if not hasFrame:
                cv2.waitKey()
                break
            frameFace, bboxes = self.getFaceBox(self.faceNet, frame)
            if not bboxes:
                print("No face Detected, Checking next frame")
                cv2.putText(frameFace, "NO FACE DETECTED!", (40, 40), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (0, 0, 255), 2,
                            cv2.LINE_AA)
                rgbImage = cv2.cvtColor(frameFace, cv2.COLOR_BGR2RGB)
                convertToQtFormat = QtGui.QImage(rgbImage.data, rgbImage.shape[1], rgbImage.shape[0],
                                                 QtGui.QImage.Format_RGB888)
                convertToQtFormat = QtGui.QPixmap.fromImage(convertToQtFormat)
                self.inputlbl.setPixmap(QPixmap(convertToQtFormat))
            else:
                for bbox in bboxes:
                    face = frame[max(0, bbox[1] - padding):min(bbox[3] + padding, frame.shape[0] - 1),
                           max(0, bbox[0] - padding):min(bbox[2] + padding, frame.shape[1] - 1)]
                    blob = cv2.dnn.blobFromImage(face, 1.0, (227, 227), self.MODEL_MEAN_VALUES, swapRB=False)
                    self.genderNet.setInput(blob)
                    genderPreds = self.genderNet.forward()
                    gender = self.genders[genderPreds[0].argmax()]
                    gender2 =str(gender)
                    genderpred2 = str(genderPreds[0].max())
                    #genderpred2 = '%.3f' % genderpred2
                    self.gndrconlbl.setText(genderpred2)
                    self.gendrlbl.setText(gender2)

                    self.ageNet.setInput(blob)
                    agePreds = self.ageNet.forward()
                    age = self.ageList[agePreds[0].argmax()]
                    age2=str(age)
                    self.agelbl.setText(age2)
                    agePreds2 = str(agePreds[0].max())
                    #agePreds2 = '%.3f' % agePreds2
                    self.ageconlbl.setText(agePreds2)

                    label = "{},{}".format(gender, age)
                    cv2.putText(frameFace, label, (bbox[0], bbox[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (0, 255, 255),2, cv2.LINE_AA)
                    rgbImage = cv2.cvtColor(frameFace, cv2.COLOR_BGR2RGB)
                    convertToQtFormat = QtGui.QImage(rgbImage.data, rgbImage.shape[1], rgbImage.shape[0],
                                                     QtGui.QImage.Format_RGB888)
                    convertToQtFormat = QtGui.QPixmap.fromImage(convertToQtFormat)
                    self.inputlbl.setPixmap(QPixmap(convertToQtFormat))

            print("time : {:.3f}".format(time.time() - t))

    parser = argparse.ArgumentParser(description='Use this script to run age and gender recognition using OpenCV.')
    parser.add_argument('-i', '--input', type=str, help='Path to input image or video file. Skip this argument to capture frames from a camera.')
    parser.add_argument('-o', '--output', type=str, default="",help='Path to output the prediction in case of single image.')
    args = parser.parse_args()
    ageList = ['(0-3)', '(4-7)', '(8-13)', '(14-20)', '(25-32)', '(38-43)', '(48-53)', '(60-100)']
    genders = ["Male", "Female"]
    faceProto = "opencvfd.pbtxt"
    faceModel = "opencvfduint8.pb"
    faceNet = cv2.dnn.readNet(faceModel, faceProto)
    ageProto = "ad.prototxt"
    ageModel = "age_net.cm"
    ageNet = cv2.dnn.readNet(ageModel, ageProto)
    genderProto = "gender_deploy.prototxt"
    genderModel = "gender_net.cm"
    genderNet = cv2.dnn.readNet(genderModel, genderProto)
    MODEL_MEAN_VALUES = (78.4263377603, 87.7689143744, 114.895847746)
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        MainWindow.setMinimumSize(QtCore.QSize(800, 600))
        MainWindow.setMaximumSize(QtCore.QSize(800, 600))
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("11.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        MainWindow.setWindowIcon(icon)
        MainWindow.setStyleSheet("background-color: rgb(202, 199, 215);")
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(0, 0, 800, 100))
        self.label.setStyleSheet("background-color: rgb(56, 49, 64);\n"
"font: italic 26pt \"Monotype Corsiva\";\n"
"color: rgb(255, 255, 255);")
        self.label.setFrameShape(QtWidgets.QFrame.Box)
        self.label.setFrameShadow(QtWidgets.QFrame.Raised)
        self.label.setLineWidth(3)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(10, 10, 81, 81))
        self.label_2.setStyleSheet("background-color: rgb(56, 49, 64);")
        self.label_2.setText("")
        self.label_2.setPixmap(QtGui.QPixmap("11.png"))
        self.label_2.setScaledContents(True)
        self.label_2.setObjectName("label_2")
        self.stackedWidget = QtWidgets.QStackedWidget(self.centralwidget)
        self.stackedWidget.setGeometry(QtCore.QRect(0, 100, 801, 501))
        self.stackedWidget.setObjectName("stackedWidget")
        self.page = QtWidgets.QWidget()
        self.page.setObjectName("page")
        self.btnstrt = QtWidgets.QPushButton(self.page)
        self.btnstrt.setGeometry(QtCore.QRect(570, 450, 211, 41))
        self.btnstrt.setStyleSheet("QPushButton {background-color: rgb(56, 49, 64); font: 12pt \"Forte\"; border-radius:12px; color: rgb(255, 255, 255);}\n"
"\n"
"QPushButton:pressed { background-color: red; border-radius:12px; font: 12pt \"Forte\"; color: rgb(255, 255, 255);}\n"
"background-color: rgb(56, 49, 64);")
        self.btnstrt.setObjectName("btnstrt")
        self.btnstrt.clicked.connect(self.start)
        self.label_3 = QtWidgets.QLabel(self.page)
        self.label_3.setGeometry(QtCore.QRect(60, 10, 681, 421))
        self.label_3.setText("")
        self.label_3.setPixmap(QtGui.QPixmap("12.png"))
        self.label_3.setScaledContents(True)
        self.label_3.setObjectName("label_3")
        self.stackedWidget.addWidget(self.page)
        self.page_2 = QtWidgets.QWidget()
        self.page_2.setObjectName("page_2")
        self.inputlbl = QtWidgets.QLabel(self.page_2)
        self.inputlbl.setGeometry(QtCore.QRect(20, 20, 511, 461))
        self.inputlbl.setFrameShape(QtWidgets.QFrame.Box)
        self.inputlbl.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.inputlbl.setLineWidth(3)
        self.inputlbl.setText("")
        self.inputlbl.setScaledContents(True)
        self.inputlbl.setAlignment(QtCore.Qt.AlignCenter)
        self.inputlbl.setObjectName("inputlbl")
        self.btncamera = QtWidgets.QPushButton(self.page_2)
        self.btncamera.setGeometry(QtCore.QRect(560, 430, 211, 41))
        self.btncamera.setStyleSheet("QPushButton {background-color: rgb(56, 49, 64); font: 12pt \"Forte\"; border-radius:12px; color: rgb(255, 255, 255);}\n"
"\n"
"QPushButton:pressed { background-color: red; border-radius:12px; font: 12pt \"Forte\"; color: rgb(255, 255, 255);}\n"
"background-color: rgb(56, 49, 64);")
        self.btncamera.setObjectName("btncamera")
        self.btncamera.clicked.connect(self.caffe)
        self.label_5 = QtWidgets.QLabel(self.page_2)
        self.label_5.setGeometry(QtCore.QRect(560, 80, 211, 20))
        self.label_5.setStyleSheet("background-color: rgb(56, 49, 64);\n"
"color: rgb(255, 255, 255);\n"
"font: 9pt \"Forte\";")
        self.label_5.setAlignment(QtCore.Qt.AlignCenter)
        self.label_5.setObjectName("label_5")
        self.label_6 = QtWidgets.QLabel(self.page_2)
        self.label_6.setGeometry(QtCore.QRect(560, 150, 211, 20))
        self.label_6.setStyleSheet("background-color: rgb(56, 49, 64);\n"
"color: rgb(255, 255, 255);\n"
"font: 9pt \"Forte\";")
        self.label_6.setAlignment(QtCore.Qt.AlignCenter)
        self.label_6.setObjectName("label_6")
        self.label_7 = QtWidgets.QLabel(self.page_2)
        self.label_7.setGeometry(QtCore.QRect(560, 290, 211, 20))
        self.label_7.setStyleSheet("background-color: rgb(56, 49, 64);\n"
"color: rgb(255, 255, 255);\n"
"font: 9pt \"Forte\";")
        self.label_7.setAlignment(QtCore.Qt.AlignCenter)
        self.label_7.setObjectName("label_7")
        self.label_8 = QtWidgets.QLabel(self.page_2)
        self.label_8.setGeometry(QtCore.QRect(560, 220, 211, 20))
        self.label_8.setStyleSheet("background-color: rgb(56, 49, 64);\n"
"color: rgb(255, 255, 255);\n"
"font: 9pt \"Forte\";")
        self.label_8.setAlignment(QtCore.Qt.AlignCenter)
        self.label_8.setObjectName("label_8")
        self.gendrlbl = QtWidgets.QLabel(self.page_2)
        self.gendrlbl.setGeometry(QtCore.QRect(560, 100, 211, 31))
        self.gendrlbl.setFrameShape(QtWidgets.QFrame.Box)
        self.gendrlbl.setFrameShadow(QtWidgets.QFrame.Raised)
        self.gendrlbl.setText("")
        self.gendrlbl.setScaledContents(True)
        self.gendrlbl.setAlignment(QtCore.Qt.AlignCenter)
        self.gendrlbl.setObjectName("gendrlbl")
        self.gndrconlbl = QtWidgets.QLabel(self.page_2)
        self.gndrconlbl.setGeometry(QtCore.QRect(560, 170, 211, 31))
        self.gndrconlbl.setFrameShape(QtWidgets.QFrame.Box)
        self.gndrconlbl.setFrameShadow(QtWidgets.QFrame.Raised)
        self.gndrconlbl.setText("")
        self.gndrconlbl.setScaledContents(False)
        self.gndrconlbl.setAlignment(QtCore.Qt.AlignCenter)
        self.gndrconlbl.setObjectName("gndrconlbl")
        self.agelbl = QtWidgets.QLabel(self.page_2)
        self.agelbl.setGeometry(QtCore.QRect(560, 240, 211, 31))
        self.agelbl.setFrameShape(QtWidgets.QFrame.Box)
        self.agelbl.setFrameShadow(QtWidgets.QFrame.Raised)
        self.agelbl.setText("")
        self.agelbl.setScaledContents(True)
        self.agelbl.setAlignment(QtCore.Qt.AlignCenter)
        self.agelbl.setObjectName("agelbl")
        self.ageconlbl = QtWidgets.QLabel(self.page_2)
        self.ageconlbl.setGeometry(QtCore.QRect(560, 310, 211, 31))
        self.ageconlbl.setFrameShape(QtWidgets.QFrame.Box)
        self.ageconlbl.setFrameShadow(QtWidgets.QFrame.Raised)
        self.ageconlbl.setText("")
        self.ageconlbl.setScaledContents(True)
        self.ageconlbl.setAlignment(QtCore.Qt.AlignCenter)
        self.ageconlbl.setObjectName("ageconlbl")
        self.stackedWidget.addWidget(self.page_2)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        self.stackedWidget.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Age and Gender Prevision"))
        self.label.setText(_translate("MainWindow", "Age and Gender Prevision "))
        self.btnstrt.setText(_translate("MainWindow", "Let Start . . "))
        self.btncamera.setText(_translate("MainWindow", "Open Camera "))
        self.label_5.setText(_translate("MainWindow", "Gender"))
        self.label_6.setText(_translate("MainWindow", "Gender Confidence"))
        self.label_7.setText(_translate("MainWindow", "Age Confidence"))
        self.label_8.setText(_translate("MainWindow", "Age "))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

