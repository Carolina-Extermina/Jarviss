    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Compras</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tpg';  
         }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cofigo for';  
	     }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nf'; 
        }else if (document.cadastro.com_datacompraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Data compra';
         }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Valor total';  
         }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Observacoes';  
         }else {  
            document.cadastro.action='cadastrar_compras.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_compras.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
          if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tpg';  
         }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cofigo for';  
	     }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nf'; 
        }else if (document.cadastro.com_datacompraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Data compra';
         }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Valor total';  
         }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Observacoes';  
         }else {    
            document.cadastro.action='alterar_compras.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_compras.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_compras.jsp';  
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
   String com_codigo = request.getParameter("com_codigo");  
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String for_codigo = request.getParameter("for_codigo");  
   String nf_codigo = request.getParameter("nf_codigo"); 
   String com_datacompra = request.getParameter("com_datacompra");      
   String com_valortotal = request.getParameter("com_valortotal"); 
   String com_observacoes = request.getParameter("com_observacoes");
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">
      <tr>  
      <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style" style="text-align: center;"> Cadastro Compras </p>
       </td>  
     </tr> 
     <tr>  
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo :</strong>  
          <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>"> </p>  
            
          <p> <strong>Codigo tpg :</strong>  
         <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
                  
         <br><br><strong>Codigo for :</strong>
         <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>">  
         
         <br><br><strong>Codigo nf :</strong>
         <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
             
         <br><br><strong>Data compra :</strong>   
         <input name="com_datacompraField" type="text" id="com_datacompraField" size="" value="<%=(com_datacompra==null)?"":com_datacompra%>">  
         
         <br><br><strong>Valor total :</strong>   
         <input name="com_valortotalField" type="text" id="com_valortotalField" size="" value="<%=(com_valortotal==null)?"":com_valortotal%>">  
         
         <br><br><strong>Observacoes :</strong>   
         <input name="com_observacoesField" type="text" id="com_observacoesField" size="" value="<%=(com_observacoes==null)?"":com_observacoes%>">  
             
     
            </p>      
      </td>  
    </tr>  
    <tr>  
      <td height="" bgcolor="#5fec5f" style="text-align:center"><p> 
        <center>    
          <input style="border-radius: 8px;" type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
          <input style="border-radius: 8px;" type="button" onClick="enviar('listar')" name="bt" value="listar">  
        </p>  
        <p> <strong>Status:  
     <input name="statusField" style="width: 70%;" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">
        </strong></p> 
      </center>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  