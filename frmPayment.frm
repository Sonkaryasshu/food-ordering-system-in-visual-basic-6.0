VERSION 5.00
Begin VB.Form frmPayment 
   BackColor       =   &H00C00000&
   Caption         =   "Payment"
   ClientHeight    =   5940
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   Picture         =   "frmPayment.frx":0000
   ScaleHeight     =   5940
   ScaleWidth      =   6615
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H00FF8080&
      Caption         =   "Ordered Food"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   5415
      Left            =   120
      TabIndex        =   8
      Top             =   360
      Width           =   3735
      Begin VB.ListBox lstOrder 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   4905
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   3495
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00FF8080&
      Height          =   3945
      Left            =   3960
      TabIndex        =   2
      Top             =   360
      Width           =   2535
      Begin VB.TextBox txtCash 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   735
         Left            =   120
         TabIndex        =   0
         Text            =   ".00"
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox txtAmount 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   735
         Left            =   120
         TabIndex        =   3
         Text            =   "0.00"
         Top             =   600
         Width           =   2295
      End
      Begin VB.TextBox txtchange 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   735
         Left            =   120
         TabIndex        =   4
         Text            =   "0.00"
         Top             =   3000
         Width           =   2295
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "CASH"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "TOTAL AMOUNT"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "CHANGE"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   375
         Left            =   120
         TabIndex        =   5
         Top             =   2640
         Width           =   1215
      End
   End
   Begin VB.CommandButton btnOK 
      BackColor       =   &H0080FFFF&
      Caption         =   "OK I'm done"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   3960
      Picture         =   "frmPayment.frx":38CB2
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   4440
      Width           =   2535
   End
End
Attribute VB_Name = "frmPayment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private TotChange As Currency

Private Sub btnOK_Click()
Dim Ans As String

TotChange = txtCash.Text - txtAmount.Text
txtchange = Format(TotChange, "###,##0.00")
btnOK.SetFocus

If Val(txtCash.Text) = 0 Then
    MsgBox "Please pay your order!", vbExclamation + vbOKOnly, "Clarification"
    txtCash.SetFocus
    frmPayment.Show
    Exit Sub
ElseIf Val(txtCash.Text) < Val(txtAmount.Text) Then
    MsgBox "Your money is not enough!", vbOKOnly, "Clarification"
    txtCash.SetFocus
    frmPayment.Show
    Exit Sub
End If
   
Ans = MsgBox("Would you like to add another item ?", vbQuestion + vbYesNo, "Clarification")
 If Ans = vbYes Then
    frmMenu.lstOrder.Clear
    frmMenu.Show
Else
    frmexit.Show
    Unload Me
End If

End Sub

Private Sub txtCash_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    If Val(txtCash.Text) < Val(txtAmount.Text) Then
    MsgBox "Your money is not enough!", vbOKOnly, "Clarification"
    txtCash.Text = " "
    Exit Sub
End If

TotChange = txtCash.Text - txtAmount.Text
txtchange = Format(TotChange, "###,##0.00")
btnOK.SetFocus
End If

End Sub

