VERSION 5.00
Begin VB.Form Help 
   Caption         =   "Form1"
   ClientHeight    =   6990
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11370
   LinkTopic       =   "Form1"
   ScaleHeight     =   6990
   ScaleWidth      =   11370
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdreturn 
      Caption         =   "Return"
      Height          =   855
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lblloggedin 
      Height          =   735
      Left            =   600
      TabIndex        =   2
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label lblhelp 
      Height          =   5775
      Left            =   3360
      TabIndex        =   0
      Top             =   360
      Width           =   7215
   End
End
Attribute VB_Name = "Help"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim text As String
Public username As String


Private Sub cmdreturn_Click()
Menu.Show
Me.Hide

End Sub

Private Sub Form_Load()
text = "HELP" & vbNewLine & vbNewLine & "The essential product bread ect are displayed down the side, " & vbNewLine & " click them then add item to add it to the basket" & vbNewLine & "To add more than one item enter the desired amount in the quantity box and then click the items button " & vbNewLine & "To checkout hit the print receipt button and a receipt will show up click print receipt then to print it" & vbNewLine & vbNewLine & "Click the return button to return to the menu"
lblhelp.Caption = text

username = Login1.Userbox.text
If username = "HarryR448" Then
user = "Harry R is logged in"
End If
lblloggedin = user
End Sub

