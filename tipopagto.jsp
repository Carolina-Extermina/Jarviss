    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Tipo pagamento</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.tpg_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
         }else if (document.cadastro.tpg_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';
         }else if (document.cadastro.tpg_ativoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo ativo';			 			
         }else {  
            document.cadastro.action='cadastrar_tipopagto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_tipopagto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.tpg_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
         }else if (document.cadastro.tpg_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';
         }else if (document.cadastro.tpg_ativoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo ativo';  			
         }else {   
            document.cadastro.action='alterar_tipopagto.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_tipopagto.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_tipopagto.jsp';  
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
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String tpg_descricao = request.getParameter("tpg_descricao");  
   String tpg_qtde = request.getParameter("tpg_qtde");  
   String tpg_ativo = request.getParameter("tpg_ativo"); 
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style" style="text-align: center;"> Cadastro Tipo pagamento </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo :</strong>  
          <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> </p>  
            <p> <strong>Descricao :</strong>  
          <input name="tpg_descricaoField" type="text" id="tpg_descricaoField" size="" value="<%=(tpg_descricao==null)?"":tpg_descricao%>">  
                  <br><br><strong>Quantidade :</strong>   
                <input name="tpg_qtdeField" type="text" id="tpg_qtdeField" size="" value="<%=(tpg_qtde==null)?"":tpg_qtde%>">  
                <br><br><strong>Ativo :</strong>   
                <input name="tpg_ativoField" type="text" id="tpg_ativoField" size="" value="<%=(tpg_ativo==null)?"":tpg_ativo%>">  
                

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
     <input name="statusField" disabled  style="width: 80%;" type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
        </strong></p>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  