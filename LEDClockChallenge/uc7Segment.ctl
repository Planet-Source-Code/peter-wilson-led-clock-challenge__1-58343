VERSION 5.00
Begin VB.UserControl uc7Segment 
   BackColor       =   &H00000000&
   ClientHeight    =   1995
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   705
   LockControls    =   -1  'True
   ScaleHeight     =   1995
   ScaleWidth      =   705
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   0
      X1              =   120
      X2              =   540
      Y1              =   60
      Y2              =   60
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   6
      X1              =   120
      X2              =   540
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   3
      X1              =   120
      X2              =   540
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   2
      X1              =   600
      X2              =   600
      Y1              =   960
      Y2              =   1560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   1
      X1              =   600
      X2              =   600
      Y1              =   180
      Y2              =   720
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   4
      X1              =   60
      X2              =   60
      Y1              =   960
      Y2              =   1560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   8
      Index           =   5
      X1              =   60
      X2              =   60
      Y1              =   180
      Y2              =   720
   End
End
Attribute VB_Name = "uc7Segment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public Property Let SetValue(ByVal intNewValue As Integer)
    Static lngMultiplex As Long: lngMultiplex = lngMultiplex + 1
    UserControl.Line1((lngMultiplex Mod 7)).Visible = CBool(Mid(Choose((intNewValue Mod 10) + 1, "1111110", "0110000", "1101101", "1111001", "0110011", "1011011", "1011111", "1110000", "1111111", "1110011"), (lngMultiplex Mod 7) + 1, 1))
End Property
