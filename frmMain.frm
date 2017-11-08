VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00C00000&
   Caption         =   "Main"
   ClientHeight    =   3930
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7245
   LinkTopic       =   "Form1"
   Picture         =   "frmMain.frx":0000
   ScaleHeight     =   3930
   ScaleWidth      =   7245
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      Height          =   1935
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   6975
      Begin VB.CommandButton btnExit 
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
         Height          =   1575
         Left            =   4680
         Picture         =   "frmMain.frx":38CB2
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   240
         Width           =   2055
      End
      Begin VB.CommandButton btnAbout 
         BackColor       =   &H0080FFFF&
         Caption         =   "About"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   2520
         Picture         =   "frmMain.frx":39872
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   240
         Width           =   2055
      End
      Begin VB.CommandButton btnOrder 
         BackColor       =   &H0080FFFF&
         Caption         =   "Orders"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   240
         Picture         =   "frmMain.frx":3A394
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   1500
      Left            =   120
      Picture         =   "frmMain.frx":3AF66
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1725
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "#TAG FAST FOOD"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   615
      Left            =   1920
      TabIndex        =   1
      Top             =   480
      Width           =   5415
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "NIT RAIPUR"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   1080
      Width           =   5055
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnAbout_Click()
    frmAbout.Show
    Unload Me
End Sub

Private Sub btnexit_Click()
    Unload Me
    frmLogin.Show
End Sub

Private Sub btnOrder_Click()
    frmMenu.Show
    Unload Me
End Sub

