VERSION 5.00
Begin VB.Form Itemspage 
   Caption         =   "Add items"
   ClientHeight    =   4755
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6075
   LinkTopic       =   "Form1"
   ScaleHeight     =   4755
   ScaleWidth      =   6075
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdsubmit 
      Caption         =   "Submit"
      Height          =   375
      Left            =   4080
      TabIndex        =   8
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton cmdbasket 
      Caption         =   "Add to basket"
      Height          =   615
      Left            =   4080
      TabIndex        =   7
      Top             =   2640
      Width           =   975
   End
   Begin VB.TextBox txtitemsearch 
      Height          =   375
      Left            =   2160
      TabIndex        =   5
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Undobut1 
      Caption         =   "Undo"
      Height          =   495
      Left            =   3720
      TabIndex        =   3
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton Returnbut 
      Caption         =   "Return"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Itemfind 
      Height          =   255
      Left            =   2160
      TabIndex        =   6
      Top             =   2880
      Width           =   1335
   End
   Begin VB.Label itemlbl 
      Caption         =   "Search for item by id"
      Height          =   495
      Left            =   2160
      TabIndex        =   4
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label Loggedin4 
      Caption         =   "Is logged in"
      Height          =   255
      Left            =   4920
      TabIndex        =   1
      Top             =   480
      Width           =   855
   End
   Begin VB.Label Loggedin3 
      Caption         =   " Harry"
      Height          =   255
      Left            =   5040
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
End
Attribute VB_Name = "Itemspage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()

End Sub

Private Sub itemlbl_Click()

End Sub
