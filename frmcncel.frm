VERSION 5.00
Begin VB.Form frmexit 
   BackColor       =   &H00C00000&
   Caption         =   "Exit"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6315
   LinkTopic       =   "Form1"
   Picture         =   "frmcncel.frx":0000
   ScaleHeight     =   3135
   ScaleWidth      =   6315
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btnexit 
      BackColor       =   &H0080FFFF&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      X1              =   0
      X2              =   6360
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "and"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   615
      Left            =   2520
      TabIndex        =   3
      Top             =   840
      Width           =   975
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Please come again!"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   855
      Left            =   360
      TabIndex        =   2
      Top             =   1440
      Width           =   7095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Thank you for coming"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   6495
   End
End
Attribute VB_Name = "frmexit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnexit_Click()
    frmMain.Show
    frmMenu.lstOrder.Clear
    frmMenu.txtAmount.Text = "0.00"
    frmMenu.txtPrice.Text = "0.00"
    Unload Me
End Sub

