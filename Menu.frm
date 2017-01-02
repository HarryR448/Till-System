VERSION 5.00
Begin VB.Form Menu 
   Caption         =   "Form1"
   ClientHeight    =   6915
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8235
   LinkTopic       =   "Form1"
   ScaleHeight     =   6915
   ScaleWidth      =   8235
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "Exit"
      Height          =   1335
      Left            =   2520
      TabIndex        =   2
      Top             =   4920
      Width           =   2895
   End
   Begin VB.CommandButton cmdhelp 
      Caption         =   "Help"
      Height          =   1335
      Left            =   2520
      TabIndex        =   1
      Top             =   3120
      Width           =   2895
   End
   Begin VB.CommandButton cmdreturn 
      Caption         =   "Return"
      Height          =   1335
      Left            =   2520
      TabIndex        =   0
      Top             =   1320
      Width           =   2895
   End
   Begin VB.Label lblloggedin2 
      Height          =   855
      Left            =   6240
      TabIndex        =   3
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Menu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public username As String

Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdhelp_Click()
Help.Show
Me.Hide
End Sub

Private Sub cmdreturn_Click()
Listpg.Show
Me.Hide
End Sub

Private Sub Label1_Click()
End Sub

Private Sub Form_Load()
username = Login1.Userbox.text
If username = "HarryR448" Then
user = "Harry R is logged in"
End If
lblloggedin2 = user
End Sub

