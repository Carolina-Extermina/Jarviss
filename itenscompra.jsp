    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Itens Compra</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo compras';  
         }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo produto';  
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nf';			
	     }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo fornecedor'; 
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento'; 
         }else if (document.cadastro.itc_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem'; 
         }else if (document.cadastro.itc_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtde'; 
         }else if (document.cadastro.itc_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor unitario'; 
         }else if (document.cadastro.itc_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descconto'; 
         }else if (document.cadastro.itc_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';   			
         }else {  
            document.cadastro.action='cadastrar_itenscompra.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_itenscompra.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo compras';   
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nf';			
	     }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo fornecedor'; 
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento'; 
         }else if (document.cadastro.itc_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem'; 
         }else if (document.cadastro.itc_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtde'; 
         }else if (document.cadastro.itc_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor unitario'; 
         }else if (document.cadastro.itc_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descconto'; 
         }else if (document.cadastro.itc_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';   			
         }else {   
            document.cadastro.action='alterar_itenscompra.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.itc_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_itenscompra.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_itenscompra.jsp';  
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
   String itc_codigo = request.getParameter("itc_codigo");  
   String com_codigo = request.getParameter("com_codigo"); 
   String pro_codigo = request.getParameter("pro_codigo");  
   String tpp_codigo = request.getParameter("tpp_codigo");  
   String nf_codigo = request.getParameter("nf_codigo"); 
   String for_codigo = request.getParameter("for_codigo");  
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String itc_embalagem = request.getParameter("itc_embalagem");  
   String itc_qtde = request.getParameter("itc_qtde"); 
   String itc_valorun = request.getParameter("itc_valorun");  
   String itc_desc = request.getParameter("itc_desc");  
   String itc_valortotal = request.getParameter("itc_valortotal");  
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style"style="text-align: center;" > Cadastro Itens Compra </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo Itens Compras :</strong>
		<input name="itc_codigoField" type="text" id="itc_codigoField" size="" value="<%=(itc_codigo==null)?"":itc_codigo%>"> 
        <br><br><strong>Codigo compras :</strong>  	   
        <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>">
        <br><br><strong>Codigo produtos :</strong>  
        <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>">           
		<br><br><strong>Codigo Tipo produto :</strong>   
		<input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
		<br><br><strong>Codigo NF :</strong>   
		<input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
		<br><br><strong>Codigo Fornecedor :</strong>   
		<input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>"> 
		<br><br><strong>Codigo Tipo pagamento :</strong>   
		<input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> 
		<br><br><strong>Embalagem :</strong>   
		<input name="itc_embalagemField" type="text" id="itc_embalagemField" size="" value="<%=(itc_embalagem==null)?"":itc_embalagem%>"> 
		<br><br><strong>Quantidade :</strong>   
		<input name="itc_qtdeField" type="text" id="itc_qtdeField" size="" value="<%=(itc_qtde==null)?"":itc_qtde%>"> 
		<br><br><strong>Valor unitario :</strong>   
		<input name="itc_valorunField" type="text" id="itc_valorunField" size="" value="<%=(itc_valorun==null)?"":itc_valorun%>"> 
		<br><br><strong>Desconto :</strong>   
		<input name="itc_descField" type="text" id="itc_descField" size="" value="<%=(itc_desc==null)?"":itc_desc%>"> 
		<br><br><strong>Valor total :</strong>   
		<input name="itc_valortotalField" type="text" id="itc_valortotalField" size="" value="<%=(itc_valortotal==null)?"":itc_valortotal%>"> 

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