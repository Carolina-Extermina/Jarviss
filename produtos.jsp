    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Produtos</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.pro_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';
         }else if (document.cadastro.pro_precocustoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo preco custo';			
	     }else if (document.cadastro.pro_precovendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo preco venda'; 
         }else if (document.cadastro.pro_estoqueField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo estoque'; 
         }else if (document.cadastro.pro_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem'; 
         }else if (document.cadastro.pro_ipiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo ipi';   			
         }else {  
            document.cadastro.action='cadastrar_produtos.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_produtos.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.pro_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';
         }else if (document.cadastro.pro_precocustoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo preco custo';			
	     }else if (document.cadastro.pro_precovendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo preco venda'; 
         }else if (document.cadastro.pro_estoqueField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo estoque'; 
         }else if (document.cadastro.pro_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem'; 
         }else if (document.cadastro.pro_ipiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo ipi';  			
         }else {   
            document.cadastro.action='alterar_produtos.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_produtos.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_produtos.jsp';  
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
   String pro_codigo = request.getParameter("pro_codigo");  
   String pro_descricao = request.getParameter("pro_descricao");  
   String tpp_codigo = request.getParameter("tpp_codigo");  
   String pro_precocusto = request.getParameter("pro_precocusto"); 
   String pro_precovenda = request.getParameter("pro_precovenda");  
   String pro_estoque = request.getParameter("pro_estoque");  
   String pro_embalagem = request.getParameter("pro_embalagem");  
   String pro_ipi = request.getParameter("pro_ipi"); 
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style" style="text-align: center;"> Cadastro Produtos </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo :</strong>  
          <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>"> </p>  
            <p> <strong>Descricao :</strong>  
          <input name="pro_descricaoField" type="text" id="pro_descricaoField" size="" value="<%=(pro_descricao==null)?"":pro_descricao%>">  
                  <br><br><strong>Codigo tipo pagamento :</strong>   
                <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
                <br><br><strong>Preco custo :</strong>   
                <input name="pro_precocustoField" type="text" id="pro_precocustoField" size="" value="<%=(pro_precocusto==null)?"":pro_precocusto%>">  
                <br><br><strong>Preco venda :</strong>   
                <input name="pro_precovendaField" type="text" id="pro_precovendaField" size="" value="<%=(pro_precovenda==null)?"":pro_precovenda%>"> 
				<br><br><strong>Estoque :</strong>   
                <input name="pro_estoqueField" type="text" id="pro_estoqueField" size="" value="<%=(pro_estoque==null)?"":pro_estoque%>"> 
				<br><br><strong>Embalagem :</strong>   
                <input name="pro_embalagemField" type="text" id="pro_embalagemField" size="" value="<%=(pro_embalagem==null)?"":pro_embalagem%>"> 
				<br><br><strong>IPI :</strong>   
                <input name="pro_ipiField" type="text" id="pro_ipiField" size="" value="<%=(pro_ipi==null)?"":pro_ipi%>"> 
				

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