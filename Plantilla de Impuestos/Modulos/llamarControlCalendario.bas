Attribute VB_Name = "llamarControlCalendario"
Option Explicit
Public banderaCalendario As Long

Public Function LanzarCalendario(CualquierFormulario As Object, xTextBox As String)
Dim xCtrl As Control

     Load frmCalendario
    
    For Each xCtrl In CualquierFormulario.Controls
        If xCtrl.Name = xTextBox Then
            frmCalendario.StartUpPosition = 0
            frmCalendario.Left = CualquierFormulario.Left + xCtrl.Left + 5
            frmCalendario.Top = CualquierFormulario.Top + xCtrl.Top + xCtrl.Height + 25
        End If
    Next
    
    frmCalendario.Show

End Function

Public Function InsertarFecha(Fecha As Date)

Dim i As Byte
Dim txt_Fecha As textbox

    Select Case banderaCalendario
        Case 1
            frm_Factura.txt_Fecha.Text = Fecha
                
        Case 2
            frm_Nota_Credito.txt_Fecha.Text = Fecha
                
        Case 3
            frm_Cierre.txt_Fecha.Text = Fecha
                
  
            

        Case Else
            MsgBox "La petici�n solicitada, a�n no se ha establecido dentro de la declaraci�n SELECT CASE", vbCritical
    End Select
End Function
