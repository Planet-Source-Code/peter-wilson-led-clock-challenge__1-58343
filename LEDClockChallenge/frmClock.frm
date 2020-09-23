VERSION 5.00
Begin VB.Form frmClock 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Simple LED Clock v1.0 - by Peter Wilson"
   ClientHeight    =   2265
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5445
   Icon            =   "frmClock.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2265
   ScaleWidth      =   5445
   StartUpPosition =   2  'CenterScreen
   Begin LEDClockChallenge.uc7Segment uc7Segment1 
      Height          =   1935
      Index           =   0
      Left            =   180
      TabIndex        =   0
      Top             =   120
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   3413
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   840
      Top             =   2340
   End
   Begin LEDClockChallenge.uc7Segment uc7Segment1 
      Height          =   1935
      Index           =   1
      Left            =   960
      TabIndex        =   1
      Top             =   120
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   3413
   End
   Begin LEDClockChallenge.uc7Segment uc7Segment1 
      Height          =   1935
      Index           =   2
      Left            =   1980
      TabIndex        =   2
      Top             =   120
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   3413
   End
   Begin LEDClockChallenge.uc7Segment uc7Segment1 
      Height          =   1935
      Index           =   3
      Left            =   2760
      TabIndex        =   3
      Top             =   120
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   3413
   End
   Begin LEDClockChallenge.uc7Segment uc7Segment1 
      Height          =   1935
      Index           =   4
      Left            =   3720
      TabIndex        =   4
      Top             =   120
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   3413
   End
   Begin LEDClockChallenge.uc7Segment uc7Segment1 
      Height          =   1935
      Index           =   5
      Left            =   4500
      TabIndex        =   5
      Top             =   120
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   3413
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   195
      Index           =   3
      Left            =   3540
      Shape           =   3  'Circle
      Top             =   1440
      Width           =   135
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   195
      Index           =   2
      Left            =   3540
      Shape           =   3  'Circle
      Top             =   660
      Width           =   135
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   195
      Index           =   1
      Left            =   1800
      Shape           =   3  'Circle
      Top             =   1440
      Width           =   135
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   195
      Index           =   0
      Left            =   1800
      Shape           =   3  'Circle
      Top             =   660
      Width           =   135
   End
End
Attribute VB_Name = "frmClock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Timer1_Timer()
    Static lngMultiplex As Long: lngMultiplex = lngMultiplex + 1
    uc7Segment1((lngMultiplex Mod 6)).SetValue = Mid(Format(Time(), "HhNnSs"), (lngMultiplex Mod 6) + 1, 1)
End Sub
