VERSION 5.00
Begin VB.Form Receipt1 
   Caption         =   "Form1"
   ClientHeight    =   6525
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   3630
   LinkTopic       =   "Form1"
   ScaleHeight     =   6525
   ScaleWidth      =   3630
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnprint 
      Caption         =   "Print receipt"
      Height          =   495
      Left            =   240
      TabIndex        =   4
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmddone 
      Caption         =   "Done"
      Height          =   495
      Left            =   2520
      TabIndex        =   3
      Top             =   5760
      Width           =   855
   End
   Begin VB.TextBox lbllistrec 
      Height          =   4815
      Left            =   480
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   600
      Width           =   2415
   End
   Begin VB.Label lblttl1 
      Caption         =   "Total is"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   5520
      Width           =   615
   End
   Begin VB.Label lblttl 
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   5760
      Width           =   1215
   End
End
Attribute VB_Name = "Receipt1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public reciept As String
Public total As String
Public username As String
Private Sub btnprint_Click()
Receipt1.PrintForm
End Sub

Private Sub cmddone_Click()
Unload Receipt1
Listpg.Show
End Sub

Private Sub Form_Load()

username = Login1.Userbox.text
If username = "HarryR448" Then
user = "Harry R is logged in"
End If
reciept = "Boston Shop" & vbNewLine & "User: " & user & vbNewLine & vbNewLine & "ITEMS:" & vbNewLine
lblttl.Caption = "£0.00"
End Sub


