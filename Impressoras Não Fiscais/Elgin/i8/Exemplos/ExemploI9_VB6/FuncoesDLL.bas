Attribute VB_Name = "Module1"
Public Declare Function AbreConexaoImpressora Lib "E1_Impressora01.dll" (ByVal tipo As Long, ByVal modelo As String, ByVal conexao As String, ByVal parametro As Long) As Integer
Public Declare Function ImprimeXMLSAT Lib "E1_Impressora01.dll" (ByVal dados As String, ByVal parametro As Long) As Integer
Public Declare Function FechaConexaoImpressora Lib "E1_Impressora01.dll" () As Integer

