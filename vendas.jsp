    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Vendas</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo vendas'; 		
         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo funcionario';  
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  
	     }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal'; 
         }else if (document.cadastro.ven_datavendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data venda';
         }else if (document.cadastro.ven_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo  valor total';
         }else if (document.cadastro.ven_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';			
         }else {  
            document.cadastro.action='cadastrar_vendas.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo vendas';  
         }else {  
            document.cadastro.action='consultar_vendas.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo vendas';  
         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo funcionario';  
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  
	     }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal'; 
         }else if (document.cadastro.ven_datavendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data venda';
         }else if (document.cadastro.ven_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo  valor total';
         }else if (document.cadastro.ven_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';			
         }else {   
            document.cadastro.action='alterar_vendas.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo venda';  
         }else {  
            document.cadastro.action='excluir_vendas.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_vendas.jsp';  
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
   String ven_codigo = request.getParameter("ven_codigo");  
   String fun_codigo = request.getParameter("fun_codigo");  
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String nf_codigo = request.getParameter("nf_codigo"); 
   String ven_datavenda = request.getParameter("ven_datavenda");
   String ven_valortotal = request.getParameter("ven_valortotal");
   String ven_observacoes = request.getParameter("ven_observacoes");
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style" style="text-align: center;" > Cadastro Vendas </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo Vendas :</strong>  
          <input name="ven_codigoField" type="text" id="ven_codigoField" size="" value="<%=(ven_codigo==null)?"":ven_codigo%>"> 
           <br><br><strong>Codigo Funcionario :</strong>  
          <input name="fun_codigoField" type="text" id="fun_codigoField" size=""   value="<%=(fun_codigo==null)?"":fun_codigo%>">  
             <br><br><strong>Codigo Tipo pagamento :</strong>   
          <input name="tpg_codigoField" type="text" id="tpg_codigoField" size=""; value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
             <br><br><strong>Codigo NF :</strong>   
          <input name="nf_codigoField" type="text" id="nf_codigoField" size=""  value="<%=(nf_codigo==null)?"":nf_codigo%>">  
             <br><br><strong>Data Venda :</strong>   
          <input name="ven_datavendaField" type="text" id="ven_datavendaField" size=""  value="<%=(ven_datavenda==null)?"":ven_datavenda%>">
			 <br><br><strong>Valor Total :</strong>   
          <input name="ven_valortotalField" type="text" id="ven_valortotalField" size="" ; value="<%=(ven_valortotal==null)?"":ven_valortotal%>">
			 <br><br><strong>Observacoes :</strong>   
          <input name="ven_observacoesField" type="text" id="ven_observacoesField" size=""  value="<%=(ven_observacoes==null)?"":ven_observacoes%>">
     
            </p>      
      </td>  
    </tr>  
    <tr>  
      <td height="" bgcolor="#5fec5f" style="text-align:center" ><p>   
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