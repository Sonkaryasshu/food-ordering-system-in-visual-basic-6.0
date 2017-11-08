VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmMenu 
   BackColor       =   &H00C00000&
   Caption         =   "Burger Menu"
   ClientHeight    =   8850
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14055
   LinkTopic       =   "Form1"
   Picture         =   "frmMenu.frx":0000
   ScaleHeight     =   8850
   ScaleWidth      =   14055
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame3 
      BackColor       =   &H00FF8080&
      Height          =   1335
      Left            =   8520
      TabIndex        =   29
      Top             =   5520
      Width           =   5415
      Begin VB.TextBox txtPrice 
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
         TabIndex        =   32
         Text            =   "0.00"
         Top             =   480
         Width           =   2535
      End
      Begin VB.TextBox txtAmount 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BeginProperty DataFormat 
            Type            =   1
            Format          =   """Php""#,##0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   13321
            SubFormatType   =   2
         EndProperty
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
         Left            =   2760
         MaxLength       =   14
         TabIndex        =   31
         Text            =   "0.00"
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Item Price"
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
         TabIndex        =   33
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Total Amount"
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
         Left            =   2760
         TabIndex        =   30
         Top             =   120
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      Height          =   1695
      Left            =   8520
      TabIndex        =   26
      Top             =   6960
      Width           =   5415
      Begin VB.CommandButton btnPayment 
         BackColor       =   &H0080FFFF&
         Caption         =   "Payment"
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
         Left            =   120
         Picture         =   "frmMenu.frx":38CB2
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   240
         Width           =   2535
      End
      Begin VB.CommandButton btnCancel 
         BackColor       =   &H0080FFFF&
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
         Height          =   1335
         Left            =   2760
         Picture         =   "frmMenu.frx":39B9D
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   240
         Width           =   2535
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FF8080&
      Caption         =   "Picked Food"
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
      Height          =   3255
      Left            =   8520
      TabIndex        =   22
      Top             =   2160
      Width           =   5415
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
         Height          =   2625
         Left            =   120
         TabIndex        =   25
         Top             =   480
         Width           =   3495
      End
      Begin VB.CommandButton btnRemove 
         BackColor       =   &H0080FFFF&
         Caption         =   "Remove"
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
         Left            =   3720
         Picture         =   "frmMenu.frx":3A75D
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton btnClear 
         BackColor       =   &H0080FFFF&
         Caption         =   "Clear"
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
         Left            =   3720
         Picture         =   "frmMenu.frx":3B38E
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   1800
         Width           =   1575
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6495
      Left            =   120
      TabIndex        =   1
      Top             =   2160
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   11456
      _Version        =   393216
      Style           =   1
      TabHeight       =   520
      BackColor       =   16744576
      ForeColor       =   16711680
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Burgers"
      TabPicture(0)   =   "frmMenu.frx":3BC88
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Btnburger2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Btnburger6"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Btnburger5"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Btnburger4"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Btnburger3"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Btnburger12"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Btnburger7"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "Btnburger10"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "Btnburger11"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "Btnburger8"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "Btnburger9"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "Btnburger1"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).ControlCount=   12
      TabCaption(1)   =   "Beverages"
      TabPicture(1)   =   "frmMenu.frx":3BCA4
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Btnlrge3"
      Tab(1).Control(1)=   "Btnlrge4"
      Tab(1).Control(2)=   "Btnsmall2"
      Tab(1).Control(3)=   "Btnsmall1"
      Tab(1).Control(4)=   "Btnlrge1"
      Tab(1).Control(5)=   "Btnmed4"
      Tab(1).Control(6)=   "Btnlrge2"
      Tab(1).Control(7)=   "Btnsmall4"
      Tab(1).Control(8)=   "Btnmed3"
      Tab(1).Control(9)=   "Btnsmall3"
      Tab(1).Control(10)=   "Btnmed2"
      Tab(1).Control(11)=   "Btnmed1"
      Tab(1).ControlCount=   12
      TabCaption(2)   =   "Special Items"
      TabPicture(2)   =   "frmMenu.frx":3BCC0
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Btnspl12"
      Tab(2).Control(1)=   "Btnspl11"
      Tab(2).Control(2)=   "Btnspl10"
      Tab(2).Control(3)=   "Btnspl9"
      Tab(2).Control(4)=   "Btnspl8"
      Tab(2).Control(5)=   "Btnspl7"
      Tab(2).Control(6)=   "Btnspl6"
      Tab(2).Control(7)=   "Btnspl5"
      Tab(2).Control(8)=   "Btnspl4"
      Tab(2).Control(9)=   "Btnspl2"
      Tab(2).Control(10)=   "Btnspl3"
      Tab(2).Control(11)=   "Btnspl1"
      Tab(2).ControlCount=   12
      Begin VB.CommandButton Btnburger1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "25/- Cheese_Burger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   120
         Picture         =   "frmMenu.frx":3BCDC
         Style           =   1  'Graphical
         TabIndex        =   50
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger9 
         BackColor       =   &H00C0FFFF&
         Caption         =   "45/- Bacon_Burger "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   120
         Picture         =   "frmMenu.frx":3C638
         Style           =   1  'Graphical
         TabIndex        =   49
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger8 
         BackColor       =   &H00C0FFFF&
         Caption         =   "40/- ChickenBurger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   6240
         Picture         =   "frmMenu.frx":3D195
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger11 
         BackColor       =   &H00C0FFFF&
         Caption         =   "30/- PineappleBurger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   4200
         Picture         =   "frmMenu.frx":3DDD2
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger10 
         BackColor       =   &H00C0FFFF&
         Caption         =   "45/- Champ_Burger "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   2160
         Picture         =   "frmMenu.frx":3E97C
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl12 
         BackColor       =   &H00C0FFC0&
         Caption         =   "30/- Ice Cream"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -68760
         Picture         =   "frmMenu.frx":3F77E
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl11 
         BackColor       =   &H00C0FFC0&
         Caption         =   "40/- Halo Halo"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -70800
         Picture         =   "frmMenu.frx":402F4
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl10 
         BackColor       =   &H00C0FFC0&
         Caption         =   "35/- Jolly Float"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -72840
         Picture         =   "frmMenu.frx":40E6D
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl9 
         BackColor       =   &H00C0FFC0&
         Caption         =   "30/- FrostChocolate"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -74880
         Picture         =   "frmMenu.frx":41B18
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl8 
         BackColor       =   &H00C0FFC0&
         Caption         =   "30/- Cup Cake"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -68760
         Picture         =   "frmMenu.frx":42C6D
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl7 
         BackColor       =   &H00C0FFC0&
         Caption         =   "15/- Ice Craze"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -70800
         Picture         =   "frmMenu.frx":43825
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl6 
         BackColor       =   &H00C0FFC0&
         Caption         =   "30/- Fruit Salad"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -72840
         Picture         =   "frmMenu.frx":44239
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl5 
         BackColor       =   &H00C0FFC0&
         Caption         =   "30/- Macaroni_Salad"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -74880
         Picture         =   "frmMenu.frx":44C8A
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl4 
         BackColor       =   &H00C0FFC0&
         Caption         =   "20/- Fruit Shake"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -68760
         Picture         =   "frmMenu.frx":459EB
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl2 
         BackColor       =   &H00C0FFC0&
         Caption         =   "20/- Milk Shake"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -72840
         Picture         =   "frmMenu.frx":46458
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl3 
         BackColor       =   &H00C0FFC0&
         Caption         =   "15/-  Mango_Shake"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -70800
         Picture         =   "frmMenu.frx":470BE
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnspl1 
         BackColor       =   &H00C0FFC0&
         Caption         =   "25/- Sandae"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -74880
         Picture         =   "frmMenu.frx":478A4
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnlrge3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "25/- Large"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -70800
         Picture         =   "frmMenu.frx":48692
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnlrge4 
         BackColor       =   &H00C0E0FF&
         Caption         =   "25/- Large"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -68760
         Picture         =   "frmMenu.frx":49109
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnsmall2 
         BackColor       =   &H00C0E0FF&
         Caption         =   "10/- Small"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -72840
         Picture         =   "frmMenu.frx":49C45
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnsmall1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "10/- Small"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -74880
         Picture         =   "frmMenu.frx":4A66C
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnlrge1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "25/- Large"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -74880
         Picture         =   "frmMenu.frx":4B25E
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnmed4 
         BackColor       =   &H00C0E0FF&
         Caption         =   "12/- Medium"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -68760
         Picture         =   "frmMenu.frx":4BE50
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnlrge2 
         BackColor       =   &H00C0E0FF&
         Caption         =   "25/- Large"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -72840
         Picture         =   "frmMenu.frx":4C98C
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnsmall4 
         BackColor       =   &H00C0E0FF&
         Caption         =   "10/- Small"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -68760
         Picture         =   "frmMenu.frx":4D3B3
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnmed3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "12/- Medium"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -70800
         Picture         =   "frmMenu.frx":4DEEF
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnsmall3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "10/- Small"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -70800
         Picture         =   "frmMenu.frx":4E966
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnmed2 
         BackColor       =   &H00C0E0FF&
         Caption         =   "12/- Medium"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -72840
         Picture         =   "frmMenu.frx":4F3DD
         Style           =   1  'Graphical
         TabIndex        =   10
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnmed1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "12/- Medium"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   -74880
         Picture         =   "frmMenu.frx":4FE04
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger7 
         BackColor       =   &H00C0FFFF&
         Caption         =   "40/- MarinaraBurger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   4200
         Picture         =   "frmMenu.frx":509F6
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger12 
         BackColor       =   &H00C0FFFF&
         Caption         =   "50/- SupremeBurger "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   6240
         Picture         =   "frmMenu.frx":5138D
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   4560
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "25/- Lettuce_Burger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   4200
         Picture         =   "frmMenu.frx":52039
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "30/- Beefy_Burger "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   6240
         Picture         =   "frmMenu.frx":52BC9
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "25/- Bloom_Burger "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   120
         Picture         =   "frmMenu.frx":53953
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger6 
         BackColor       =   &H00C0FFFF&
         Caption         =   "25/- Garden_Burger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   2160
         Picture         =   "frmMenu.frx":54719
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Btnburger2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "30/-   Ham_Burger"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   2160
         Picture         =   "frmMenu.frx":555EB
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   720
         Width           =   1935
      End
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   1740
      Left            =   120
      Picture         =   "frmMenu.frx":56209
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1965
   End
   Begin VB.Label Label4 
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
      Height          =   255
      Left            =   2160
      TabIndex        =   21
      Top             =   1200
      Width           =   3255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "#TAG FAST FOOD"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   615
      Left            =   2160
      TabIndex        =   0
      Top             =   480
      Width           =   6855
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private TotAmount As Currency

'burger1

Private Sub Btnburger1_Click()
If Btnburger1.Value = True Then

        With lstOrder
            .AddItem "Cheese Burger"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger10

Private Sub Btnburger10_Click()
If Btnburger10.Value = True Then
    
        With lstOrder
            .AddItem "Champ Burger"
        End With
    txtPrice.Text = "45.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger11

Private Sub Btnburger11_Click()
If Btnburger11.Value = True Then
    
        With lstOrder
            .AddItem "Pineapple Burger"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger12

Private Sub Btnburger12_Click()
If Btnburger12.Value = True Then
    
        With lstOrder
            .AddItem " Supreme Burger"
        End With
    txtPrice.Text = "50.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger2

Private Sub Btnburger2_Click()
If Btnburger2.Value = True Then

        With lstOrder
            .AddItem "Ham Burger"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger3

Private Sub Btnburger3_Click()
If Btnburger3.Value = True Then
    
        With lstOrder
            .AddItem "Lettuce Burger"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger4

Private Sub Btnburger4_Click()
If Btnburger4.Value = True Then
    
        With lstOrder
            .AddItem "Beefy Burger"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger5

Private Sub Btnburger5_Click()
If Btnburger5.Value = True Then
    
        With lstOrder
            .AddItem "Bloom Burger"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger6

Private Sub Btnburger6_Click()
If Btnburger6.Value = True Then

        With lstOrder
            .AddItem "Garden Burger"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger7

Private Sub Btnburger7_Click()
If Btnburger7.Value = True Then

        With lstOrder
            .AddItem "Marinara Burger"
        End With
    txtPrice.Text = "40.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger8

Private Sub Btnburger8_Click()
If Btnburger8.Value = True Then

        With lstOrder
            .AddItem "Chicken Burger"
        End With
    txtPrice.Text = "40.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'burger9

Private Sub Btnburger9_Click()
If Btnburger9.Value = True Then

        With lstOrder
            .AddItem "Bacon Burger"
        End With
    txtPrice.Text = "45.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

Private Sub btnCancel_Click()
    frmMain.Show
    Unload Me
End Sub

Private Sub btnClear_Click()
lstOrder.Clear
    txtPrice.Text = "0.00"
    txtAmount.Text = "0.00"
End Sub

'beverage9

Private Sub Btnlrge1_Click()
If Btnlrge1.Value = True Then

        With lstOrder
            .AddItem "Coke Large"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If
End Sub

'beverage10

Private Sub Btnlrge2_Click()
If Btnlrge2.Value = True Then

        With lstOrder
            .AddItem "Pepsi Large"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage11

Private Sub Btnlrge3_Click()
If Btnlrge3.Value = True Then

        With lstOrder
            .AddItem "7up Large"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage12

Private Sub Btnlrge4_Click()
If Btnlrge4.Value = True Then

        With lstOrder
            .AddItem "Mountain dew Large"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage5

Private Sub Btnmed1_Click()
If Btnmed1.Value = True Then

        With lstOrder
            .AddItem "Coke medium"
        End With
    txtPrice.Text = "12.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage6

Private Sub Btnmed2_Click()
If Btnmed2.Value = True Then

        With lstOrder
            .AddItem "Pepsi medium"
        End With
    txtPrice.Text = "12.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage7

Private Sub Btnmed3_Click()
If Btnmed3.Value = True Then

        With lstOrder
            .AddItem "7up medium"
        End With
    txtPrice.Text = "12.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage8

Private Sub Btnmed4_Click()
If Btnmed4.Value = True Then

        With lstOrder
            .AddItem "Mountain dew medium"
        End With
    txtPrice.Text = "12.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

Private Sub btnPayment_Click()

If Val(txtAmount) = 0 Then
    MsgBox "You don't have any order yet!", vbExclamation + vbOKOnly, "Clarification"
Else
    frmPayment.Show
    frmPayment.txtCash.SetFocus
    frmMenu.Hide
End If

For i = 0 To frmMenu.lstOrder.ListCount - 1
    frmPayment.lstOrder.AddItem lstOrder.List(i)
Next i

frmPayment.txtAmount.Text = Format(Val(frmPayment.txtAmount.Text) + Val(txtAmount.Text), "###,###,0.00")

frmMenu.Enabled = True
End Sub

Private Sub btnRemove_Click()

' Data remove for burger

If lstOrder.Text = "Cheese Burger" Then
    txtAmount = Val(txtAmount) - 25
ElseIf lstOrder.Text = "Ham Burger" Then
    txtAmount = Val(txtAmount) - 30
ElseIf lstOrder.Text = "Lettuce Burger" Then
    txtAmount = Val(txtAmount) - 25
ElseIf lstOrder.Text = "Beefy Burger" Then
    txtAmount = Val(txtAmount) - 30
ElseIf lstOrder.Text = "Bloom Burger" Then
    txtAmount = Val(txtAmount) - 25
ElseIf lstOrder.Text = "Garden Burger" Then
    txtAmount = Val(txtAmount) - 25
ElseIf lstOrder.Text = "Marinara Burger" Then
    txtAmount = Val(txtAmount) - 40
ElseIf lstOrder.Text = "Chicken Burger" Then
    txtAmount = Val(txtAmount) - 40
ElseIf lstOrder.Text = " Bacon Burger" Then
    txtAmount = Val(txtAmount) - 45
ElseIf lstOrder.Text = "Champ Burger" Then
    txtAmount = Val(txtAmount) - 45
ElseIf lstOrder.Text = "Pineapple Burger" Then
    txtAmount = Val(txtAmount) - 30
ElseIf lstOrder.Text = "Supreme Burger" Then
    txtAmount = Val(txtAmount) - 50
End If

' Data remove for beverage
If lstOrder.Text = "Coke small" Then
    txtAmount = Val(txtAmount) - 10
ElseIf lstOrder.Text = "Pepsi small" Then
    txtAmount = Val(txtAmount) - 10
ElseIf lstOrder.Text = "7up 8oz" Then
    txtAmount = Val(txtAmount) - 10
 ElseIf lstOrder.Text = "Mountain dew small" Then
    txtAmount = Val(txtAmount) - 10
 ElseIf lstOrder.Text = "Coke medium" Then
    txtAmount = Val(txtAmount) - 12
 ElseIf lstOrder.Text = "Pepsi medium" Then
    txtAmount = Val(txtAmount) - 12
 ElseIf lstOrder.Text = "7up medium" Then
    txtAmount = Val(txtAmount) - 12
 ElseIf lstOrder.Text = "Mountain dew medium" Then
    txtAmount = Val(txtAmount) - 12
 ElseIf lstOrder.Text = "Coke Large" Then
    txtAmount = Val(txtAmount) - 25
 ElseIf lstOrder.Text = "Pepsi Large" Then
    txtAmount = Val(txtAmount) - 25
 ElseIf lstOrder.Text = "7up Large" Then
    txtAmount = Val(txtAmount) - 25
 ElseIf lstOrder.Text = "Mountain dew Large" Then
    txtAmount = Val(txtAmount) - 25
 End If
 
 'Data remove for Special Items
If lstOrder.Text = "Sundae" Then
    txtAmount = Val(txtAmount) - 25
ElseIf lstOrder.Text = "Milk Shake" Then
    txtAmount = Val(txtAmount) - 20
ElseIf lstOrder.Text = "Mango Shake" Then
    txtAmount = Val(txtAmount) - 15
 ElseIf lstOrder.Text = "Fruit Shake" Then
    txtAmount = Val(txtAmount) - 20
 ElseIf lstOrder.Text = "Macaroni Salad" Then
    txtAmount = Val(txtAmount) - 30
 ElseIf lstOrder.Text = "Fruit Salad" Then
    txtAmount = Val(txtAmount) - 30
 ElseIf lstOrder.Text = "Ice Craze" Then
    txtAmount = Val(txtAmount) - 15
 ElseIf lstOrder.Text = "Cup Cake" Then
    txtAmount = Val(txtAmount) - 30
 ElseIf lstOrder.Text = "Frost Chocolate" Then
    txtAmount = Val(txtAmount) - 30
 ElseIf lstOrder.Text = "Jolly Floats" Then
    txtAmount = Val(txtAmount) - 35
 ElseIf lstOrder.Text = "Halo Halo Special" Then
    txtAmount = Val(txtAmount) - 40
 ElseIf lstOrder.Text = " Ice Cream" Then
    txtAmount = Val(txtAmount) - 30
 End If
 
For i = 0 To lstOrder.ListIndex
If lstOrder.Selected(i) Then
    lstOrder.RemoveItem (i)
End If
Next i

End Sub

'beverage1

Private Sub Btnsmall1_Click()
If Btnsmall1.Value = True Then

        With lstOrder
            .AddItem "Coke small"
        End With
    txtPrice.Text = "10.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage2

Private Sub Btnsmall2_Click()
If Btnsmall2.Value = True Then

        With lstOrder
            .AddItem "Pepsi small"
        End With
    txtPrice.Text = "10.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage3

Private Sub Btnsmall3_Click()
If Btnsmall3.Value = True Then

        With lstOrder
            .AddItem "7up small"
        End With
    txtPrice.Text = "10.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'beverage4

Private Sub Btnsmall4_Click()
If Btnsmall4.Value = True Then

        With lstOrder
            .AddItem "Mountain dew small"
        End With
    txtPrice.Text = "10.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item1

Private Sub Btnspl1_Click()
If Btnspl1.Value = True Then

        With lstOrder
            .AddItem "Sundae"
        End With
    txtPrice.Text = "25.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item10

Private Sub Btnspl10_Click()
If Btnspl10.Value = True Then

        With lstOrder
            .AddItem "Jolly Floats"
        End With
    txtPrice.Text = "35.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item11

Private Sub Btnspl11_Click()
If Btnspl11.Value = True Then

        With lstOrder
            .AddItem "Halo Halo Special"
        End With
    txtPrice.Text = "40.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item12

Private Sub Btnspl12_Click()
If Btnspl12.Value = True Then

        With lstOrder
            .AddItem "Rocky Road Ice Cream"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item2

Private Sub Btnspl2_Click()
If Btnspl2.Value = True Then

        With lstOrder
            .AddItem "Milk Shake"
        End With
    txtPrice.Text = "20.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item3

Private Sub Btnspl3_Click()
If Btnspl3.Value = True Then

        With lstOrder
            .AddItem "Mango Shake"
        End With
    txtPrice.Text = "15.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item4

Private Sub Btnspl4_Click()
If Btnspl4.Value = True Then

        With lstOrder
            .AddItem "Fruit Shake"
        End With
    txtPrice.Text = "20.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item5

Private Sub Btnspl5_Click()
If Btnspl5.Value = True Then

        With lstOrder
            .AddItem "Macaroni Salad"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item6

Private Sub Btnspl6_Click()
If Btnspl6.Value = True Then

        With lstOrder
            .AddItem "Fruit Salad"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item7

Private Sub Btnspl7_Click()
If Btnspl7.Value = True Then

        With lstOrder
            .AddItem "Ice Craze"
        End With
    txtPrice.Text = "15.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item8

Private Sub Btnspl8_Click()
If Btnspl8.Value = True Then

        With lstOrder
            .AddItem "Cup cake"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub

'special item9

Private Sub Btnspl9_Click()
If Btnspl9.Value = True Then

        With lstOrder
            .AddItem "Frost Chocolate"
        End With
    txtPrice.Text = "30.00"
    TotAmount = Format(Val(txtAmount) + Val(txtPrice), "###,##0.00")
    txtAmount = TotAmount
    btnPayment.SetFocus
End If

End Sub


'Total amount

Private Sub txtAmount_Change()
    If txtAmount.Text = "0" Then
        txtPrice.Text = "0.00"
    End If
End Sub
