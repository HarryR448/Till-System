VERSION 5.00
Begin VB.Form Login1 
   Caption         =   "Login"
   ClientHeight    =   7830
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7755
   LinkTopic       =   "Form1"
   ScaleHeight     =   7830
   ScaleWidth      =   7755
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox Userbox 
      Height          =   315
      Left            =   2760
      TabIndex        =   16
      Text            =   "Select Username"
      Top             =   2880
      Width           =   1695
   End
   Begin VB.Timer Timer1 
      Left            =   480
      Top             =   6960
   End
   Begin VB.CommandButton cmdenter 
      Caption         =   "Enter"
      Height          =   495
      Left            =   4200
      TabIndex        =   15
      Top             =   6960
      Width           =   615
   End
   Begin VB.CommandButton cmd0 
      Caption         =   "0"
      Height          =   495
      Left            =   3360
      TabIndex        =   14
      Top             =   6960
      Width           =   615
   End
   Begin VB.CommandButton cmdundo 
      Caption         =   "Undo"
      Height          =   495
      Left            =   2520
      TabIndex        =   13
      Top             =   6960
      Width           =   615
   End
   Begin VB.CommandButton Cmd9 
      Caption         =   "9(xyz)"
      Height          =   495
      Left            =   4200
      TabIndex        =   12
      Top             =   6240
      Width           =   615
   End
   Begin VB.CommandButton Cmd8 
      Caption         =   "8(vw)"
      Height          =   495
      Left            =   3360
      TabIndex        =   11
      Top             =   6240
      Width           =   615
   End
   Begin VB.CommandButton cmd7 
      Caption         =   "7(stu)"
      Height          =   495
      Left            =   2520
      TabIndex        =   10
      Top             =   6240
      Width           =   615
   End
   Begin VB.CommandButton cmd6 
      Caption         =   "6(pqr)"
      Height          =   495
      Left            =   4200
      TabIndex        =   9
      Top             =   5520
      Width           =   615
   End
   Begin VB.CommandButton cmd5 
      Caption         =   "5(mno)"
      Height          =   495
      Left            =   3360
      TabIndex        =   8
      Top             =   5520
      Width           =   615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "4(jkl)"
      Height          =   495
      Left            =   2520
      TabIndex        =   7
      Top             =   5520
      Width           =   615
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "3(ghi)"
      Height          =   495
      Left            =   4200
      TabIndex        =   6
      Top             =   4800
      Width           =   615
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "2(def)"
      Height          =   495
      Left            =   3360
      TabIndex        =   5
      Top             =   4800
      Width           =   615
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "1(abc)"
      Height          =   495
      Left            =   2520
      TabIndex        =   4
      Top             =   4800
      Width           =   615
   End
   Begin VB.TextBox Passbox 
      Height          =   375
      Left            =   2760
      TabIndex        =   3
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Label Lb3 
      Caption         =   "Password"
      Height          =   255
      Left            =   2760
      TabIndex        =   2
      Top             =   3480
      Width           =   1575
   End
   Begin VB.Label Lb2 
      Caption         =   "Username"
      Height          =   255
      Left            =   2760
      TabIndex        =   1
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label Lb1 
      Caption         =   "Login to Use"
      Height          =   255
      Left            =   3000
      TabIndex        =   0
      Top             =   1200
      Width           =   1095
   End
End
Attribute VB_Name = "Login1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public case1 As String
Public case2 As String
Public case3 As String
Public case4 As String
Public hitcounter As Integer
Public password As String
Public key1 As String
Public username As String

Private Sub cmd0_Click()
key1 = 0
password = password + key1
Passbox.text = password

End Sub

Private Sub cmd1_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 1
case2 = "a"
case3 = "b"
case4 = "c"

End Sub

Private Sub cmd2_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 2
case2 = "d"
case3 = "e"
case4 = "f"
End Sub

Private Sub cmd3_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 3
case2 = "g"
case3 = "h"
case4 = "i"
End Sub

Private Sub cmd5_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 5
case2 = "m"
case3 = "n"
case4 = "o"

End Sub

Private Sub cmd6_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 6
case2 = "p"
case3 = "q"
case4 = "r"
End Sub

Private Sub cmd7_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 7
case2 = "s"
case3 = "t"
case4 = "u"
End Sub

Private Sub Cmd8_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 8
case2 = "v"
case3 = "w"
case4 = ""
End Sub

Private Sub Cmd9_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 9
case2 = "x"
case3 = "y"
case4 = "z"
End Sub

Private Sub cmdenter_Click()
If Userbox.text = "HarryR448" And Passbox.text = "password" Then
    Listpg.Show
Else
MsgBox "Username or  Password incorrect"
End If
username = Userbox.text
Me.Hide
End Sub

Private Sub cmdundo_Click()
If (Len(password) > 0) Then
password = Mid(password, 1, Len(password) - 1)
Passbox = password
Else
password = ""
Passbox = password
End If
End Sub

Private Sub Command4_Click()

hitcounter = hitcounter + 1
Timer1.Interval = 1500
Timer1.Enabled = True

case1 = 4
case2 = "j"
case3 = "k"
case4 = "l"

End Sub

Private Sub Form_Load()
Userbox.Clear
Userbox.AddItem "HarryR448"
Userbox.ItemData(Userbox.NewIndex) = 60

End Sub

Private Sub Timer1_Timer()
Dim key
If hitcounter < 5 Then
Select Case hitcounter
     Case "1"
     key = case1
     Case "2"
     key = case2
     Case "3"
     key = case3
     Case "4"
     key = case4
End Select
Else
    key = ""
End If
password = password + key
Passbox.text = password
hitcounter = 0
Timer1.Enabled = False

End Sub

