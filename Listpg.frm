VERSION 5.00
Begin VB.Form Listpg 
   Caption         =   "List"
   ClientHeight    =   5280
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7155
   LinkTopic       =   "Form1"
   ScaleHeight     =   5280
   ScaleWidth      =   7155
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt_quantity 
      Height          =   285
      Left            =   1680
      TabIndex        =   14
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton cmdcola 
      Caption         =   "Cola 1L"
      Height          =   495
      Left            =   240
      TabIndex        =   12
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton cmdhotdog 
      Caption         =   "Hotdogs"
      Height          =   495
      Left            =   240
      TabIndex        =   11
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmdchoc 
      Caption         =   "Chocolate"
      Height          =   495
      Left            =   240
      TabIndex        =   10
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton cmdmilk 
      Caption         =   "Milk"
      Height          =   495
      Left            =   240
      TabIndex        =   9
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton cmdwater 
      Caption         =   "Bottled water"
      Height          =   495
      Left            =   240
      TabIndex        =   8
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton cmdbread 
      Caption         =   "Bread"
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox txtitems 
      Height          =   4575
      Left            =   3120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Top             =   240
      Width           =   2295
   End
   Begin VB.CommandButton cmdmenu 
      Caption         =   "Menu"
      Height          =   375
      Left            =   5640
      TabIndex        =   4
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Printbut 
      Caption         =   "Print receipt"
      Height          =   375
      Left            =   5640
      TabIndex        =   3
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton undobut 
      Caption         =   "Reset"
      Height          =   375
      Left            =   5640
      TabIndex        =   0
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label lblquantity 
      Caption         =   "Quantity"
      Height          =   255
      Left            =   1680
      TabIndex        =   13
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label lblloggedin1 
      Height          =   735
      Left            =   5760
      TabIndex        =   5
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lblTotalentry 
      Height          =   495
      Left            =   5520
      TabIndex        =   2
      Top             =   3840
      Width           =   1455
   End
   Begin VB.Label totlb 
      Caption         =   "Total is"
      Height          =   255
      Left            =   6120
      TabIndex        =   1
      Top             =   3480
      Width           =   615
   End
End
Attribute VB_Name = "Listpg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public username As String
Public quan As Double
Public reciept As String
Public items As String
Public price As Double
Public total As String
Public totalcalc As Double
Private Sub cmdbread_Click()
quan = txt_quantity.text
reciept = reciept & vbNewLine & quan & " X £" & "1.20 Bread"
txtitems.text = reciept
totalcalc = totalcalc + (quan * 1.2)
total = "£" & totalcalc
lblTotalentry.Caption = total
Receipt1.lbllistrec.text = txtitems.text
Receipt1.lblttl.Caption = lblTotalentry.Caption
End Sub

Private Sub cmdchoc_Click()
quan = txt_quantity.text
reciept = reciept & vbNewLine & quan & " X £" & "1.00 Chocolate"
txtitems.text = reciept
totalcalc = totalcalc + (quan * 1)
total = "£" & totalcalc
lblTotalentry.Caption = total
Receipt1.lbllistrec.text = txtitems.text
Receipt1.lblttl.Caption = lblTotalentry.Caption
End Sub

Private Sub cmdcola_Click()
quan = txt_quantity.text
reciept = reciept & vbNewLine & quan & " X £" & "1.60 Cola 1L"
txtitems.text = reciept
totalcalc = totalcalc + (quan * 1.6)
total = "£" & totalcalc
lblTotalentry.Caption = total
Receipt1.lbllistrec.text = txtitems.text
Receipt1.lblttl.Caption = lblTotalentry.Caption
End Sub

Private Sub cmdhotdog_Click()
quan = txt_quantity.text
reciept = reciept & vbNewLine & quan & " X £" & "2.00 Tinned Hotdogs"
txtitems.text = reciept
totalcalc = totalcalc + (quan * 2)
total = "£" & totalcalc
lblTotalentry.Caption = total
Receipt1.lbllistrec.text = txtitems.text
Receipt1.lblttl.Caption = lblTotalentry.Caption
End Sub

Private Sub cmdmenu_Click()
Menu.Show
Me.Hide
End Sub


Private Sub cmdmilk_Click()
quan = txt_quantity.text
reciept = reciept & vbNewLine & quan & " X £" & "1.45 Milk"
txtitems.text = reciept
totalcalc = totalcalc + (quan * 1.45)
total = "£" & totalcalc
lblTotalentry.Caption = total
Receipt1.lbllistrec.text = txtitems.text
Receipt1.lblttl.Caption = lblTotalentry.Caption
End Sub

Private Sub cmdwater_Click()
quan = txt_quantity.text
reciept = reciept & vbNewLine & quan & " X £" & "0.50 Bottled water"
txtitems.text = reciept
totalcalc = totalcalc + (quan * 0.5)
total = "£" & totalcalc
lblTotalentry.Caption = total
Receipt1.lbllistrec.text = txtitems.text
Receipt1.lblttl.Caption = lblTotalentry.Caption
End Sub

Private Sub Form_Load()
username = Login1.Userbox.text
If username = "HarryR448" Then
user = "Harry R is logged in"
End If
lblloggedin1 = user
lblTotalentry.Caption = "£0.00"
txt_quantity.text = "1"
reciept = "Boston Shop" & vbNewLine & "User: " & user & vbNewLine & vbNewLine & "ITEMS:" & vbNewLine
txtitems.text = reciept
End Sub


Private Sub Printbut_Click()
Receipt1.Show
txtitems = reciept
totalcalc = 0
End Sub

Private Sub undobut_Click()
totalcalc = 0
Unload Listpg
Listpg.Show
End Sub
