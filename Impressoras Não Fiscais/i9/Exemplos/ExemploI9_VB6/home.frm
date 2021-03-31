VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4110
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4110
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Fechar Comunicação"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   2040
      Width           =   3735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Imprimir Danfe"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1560
      Width           =   3735
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2160
      TabIndex        =   4
      Text            =   "0"
      Top             =   600
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Text            =   "USB"
      Top             =   600
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Text            =   "I9"
      Top             =   120
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Text            =   "1"
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Abre Conexão"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "Status Conexão: Fechada"
      ForeColor       =   &H8000000C&
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2640
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim tipo As Long
Dim modelo As String
Dim conexao As String
Dim parametro As Long
Dim result As Long

tipo = CLng(Text1.Text)

modelo = Text2.Text
conexao = Text3.Text
parametro = CLng(Text4.Text)

result = AbreConexaoImpressora(tipo, modelo, conexao, parametro)

If result = 0 Then
    Label1.Caption = "Status Conexão: Aberta"
Else
    Label1.Caption = "Status Conexão: ERRO" & CStr(result)
End If

End Sub

Private Sub Command2_Click()
    Dim result As Integer

    result = ImprimeXMLSAT("path=arquivoVenda.xml", 0)
    MsgBox CStr(result)
    
End Sub

Private Sub Command3_Click()
    Dim result As Integer

    result = FechaConexaoImpressora()
    MsgBox CStr(result)

End Sub
