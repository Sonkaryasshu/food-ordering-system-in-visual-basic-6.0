VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H00C00000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   4875
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   10935
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmLogin.frx":0000
   ScaleHeight     =   2880.313
   ScaleMode       =   0  'User
   ScaleWidth      =   10267.37
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdOK 
      BackColor       =   &H0080FFFF&
      Caption         =   "OK"
      Default         =   -1  'True
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
      Left            =   6600
      Picture         =   "frmLogin.frx":38CB2
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3120
      Width           =   1740
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H0080FFFF&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
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
      Left            =   8760
      Picture         =   "frmLogin.frx":39B2A
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3120
      Width           =   1740
   End
   Begin VB.TextBox txtPassword 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      IMEMode         =   3  'DISABLE
      Left            =   2880
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   3600
      Width           =   3645
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "*password=sonkar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   255
      Left            =   3000
      TabIndex        =   6
      Top             =   4320
      Width           =   3015
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "#TAG FAST FOOD"
      BeginProperty Font 
         Name            =   "Cooper Std Black"
         Size            =   24
         Charset         =   0
         Weight          =   900
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   3360
      TabIndex        =   5
      Top             =   960
      Width           =   4695
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "WELCOME TO FOOD ORDERING PROJECT"
      BeginProperty Font 
         Name            =   "@Adobe Fangsong Std R"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   495
      Left            =   2520
      TabIndex        =   4
      Top             =   360
      Width           =   6375
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      X1              =   225.347
      X2              =   2591.49
      Y1              =   2765.1
      Y2              =   2765.1
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      X1              =   225.347
      X2              =   225.347
      Y1              =   1276.2
      Y2              =   2765.1
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&Password:"
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
      Height          =   390
      Index           =   1
      Left            =   2880
      TabIndex        =   0
      Top             =   3120
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   2280
      Left            =   360
      Picture         =   "frmLogin.frx":3AA8D
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   2280
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public LoginSucceeded As Boolean

Private Sub cmdCancel_Click()
    End
End Sub

Private Sub cmdOK_Click()
    If txtPassword = "sonkar" Then
        LoginSucceeded = True
        frmMain.Show
        Unload Me
    Else
        MsgBox "Access denied!", vbCritical, "Login"
        txtPassword.SetFocus
        txtPassword = ""
    End If
End Sub


