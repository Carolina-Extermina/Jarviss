    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Conta Receber</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.cr_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor conta';  
         }else if (document.cadastro.cr_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data vencimento';  
	     }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o data recebimento'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nf codigo';	
         }else if (document.cadastro.cr_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';			
         }else {  
            document.cadastro.action='cadastrar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.cr_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor conta';  
         }else if (document.cadastro.cr_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data vencimento';  
	     }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o data recebimento'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nf codigo';	
         }else if (document.cadastro.cr_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nf codigo';			
         }else {    
            document.cadastro.action='alterar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_contareceber.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_contareceber.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
   <style type="text/css">  
   <!--  
   .style {&nbsp; &nbsp;font-size: px;  
   &nbsp; &nbsp;font-weight: bold;  
   }  
   -->  
   </style>  
   </head>  
     
   <%  
   String cr_codigo = request.getParameter("cr_codigo");  
   String cr_valorconta = request.getParameter("cr_valorconta");  
   String cr_datavencimento = request.getParameter("cr_datavencimento");  
   String cr_datarecebimento = request.getParameter("cr_datarecebimento"); 
   String nf_codigo = request.getParameter("nf_codigo");  
   String cr_observacoes = request.getParameter("cr_observacoes");
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style" style="text-align: center;"> Cadastro Conta Receber </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo :</strong>  
          <input name="cr_codigoField" type="text" id="cr_codigoField" size="" value="<%=(cr_codigo==null)?"":cr_codigo%>"> </p>  
            <p> <strong>Valor Conta :</strong>  
          <input name="cr_valorcontaField" type="text" id="cr_valorcontaField" size="" value="<%=(cr_valorconta==null)?"":cr_valorconta%>">  
                  <br><br><strong>Data Vencimento :</strong>   
                <input name="cr_datavencimentoField" type="text" id="cr_datavencimentoField" size="" value="<%=(cr_datavencimento==null)?"":cr_datavencimento%>">  
             <br><br><strong>Data Recebimento :</strong>   
                <input name="cr_datarecebimentoField" type="text" id="cr_datarecebimentoField" size="" value="<%=(cr_datarecebimento==null)?"":cr_datarecebimento%>"> 
             <br><br><strong>NF Codigo :</strong>   
                <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">
             <br><br><strong>Observacoes :</strong>   
                <input name="cr_observacoesField" type="text" id="cr_observacoesField" size="" value="<%=(cr_observacoes==null)?"":cr_observacoes%>">				
             
     
            </p>      
      </td>  
    </tr>  
    <tr>  
      <td height="" bgcolor="#5fec5f" style="text-align:center"><p>   
          <input style="border-radius: 8px;" type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('listar')" name="bt" value="listar">  
        </p>  
        <p> <strong>Status:  
     <input name="statusField" disabled style="width: 80%;" type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
        </strong></p>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  