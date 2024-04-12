    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Fornecedor</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.for_nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.for_enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereco'; 
         }else if (document.cadastro.for_numeroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numero'; 			
	     }else if (document.cadastro.for_bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro'; 
         }else if (document.cadastro.for_cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade';	
         }else if (document.cadastro.for_ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo uf';
         }else if (document.cadastro.for_cnpjcpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cnpjcpf';
         }else if (document.cadastro.for_rgieField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo rgie';
         }else if (document.cadastro.for_telefoneField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo telefone';
         }else if (document.cadastro.for_faxField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo fax';
         }else if (document.cadastro.for_celularField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo celular';
         }else if (document.cadastro.for_emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo email';			
         }else {  
            document.cadastro.action='cadastrar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.for_nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.for_enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereco'; 
         }else if (document.cadastro.for_numeroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numero'			
	     }else if (document.cadastro.for_bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro'; 
         }else if (document.cadastro.for_cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade';	
         }else if (document.cadastro.for_ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo uf';
         }else if (document.cadastro.for_cnpjcpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cnpjcpf';
         }else if (document.cadastro.for_rgieField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo rgie';
         }else if (document.cadastro.for_telefoneField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo telefone';
         }else if (document.cadastro.for_faxField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo fax';
         }else if (document.cadastro.for_celularField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo celular';
         }else if (document.cadastro.for_emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo email';			
         }else {     
            document.cadastro.action='alterar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_fornecedor.jsp';  
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
   String for_codigo = request.getParameter("for_codigo");  
   String for_nome = request.getParameter("for_nome");  
   String for_endereco = request.getParameter("for_endereco");  
   String for_numero = request.getParameter("for_numero"); 
   String for_bairro = request.getParameter("for_bairro");  
   String for_cidade = request.getParameter("for_cidade");
   String for_uf = request.getParameter("for_uf");  
   String for_cnpjcpf = request.getParameter("for_cnpjcpf");  
   String for_rgie = request.getParameter("for_rgie");  
   String for_telefone = request.getParameter("for_telefone"); 
   String for_fax = request.getParameter("for_fax");  
   String for_celular = request.getParameter("for_celular");
   String for_email = request.getParameter("for_email");
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="#2f4f4f"><p align="left" class="style" style="text-align: center;"> Cadastro Fornecedor </p>  
       </td>  
     </tr>  
     <tr> 
       <td height="" bgcolor="#5fec5f"><p> <strong>Codigo :</strong>  
          <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>"> </p>  
            <p> <strong>Nome :</strong>  
          <input name="for_nomeField" type="text" id="for_nomeField" size="" value="<%=(for_nome==null)?"":for_nome%>">  
                  <br><br><strong>Endereco :</strong>   
                <input name="for_enderecoField" type="text" id="for_enderecoField" size="" value="<%=(for_endereco==null)?"":for_endereco%>">  
             <br><br><strong>Numero :</strong>   
                <input name="for_numeroField" type="text" id="for_numeroField" size="" value="<%=(for_numero==null)?"":for_numero%>"> 
             <br><br><strong>Bairro :</strong>   
                <input name="for_bairroField" type="text" id="for_bairroField" size="" value="<%=(for_bairro==null)?"":for_bairro%>">        
             <br><br><strong>Cidade :</strong>   
                <input name="for_cidadeField" type="text" id="for_cidadeField" size="" value="<%=(for_cidade==null)?"":for_cidade%>">
             <br><br><strong>UF :</strong>   
                <input name="for_ufField" type="text" id="for_ufField" size="" value="<%=(for_uf==null)?"":for_uf%>">
             <br><br><strong>CnpjCpf :</strong>   
                <input name="for_cnpjcpfField" type="text" id="for_cnpjcpfField" size="" value="<%=(for_cnpjcpf==null)?"":for_cnpjcpf%>">
             <br><br><strong>Rgie :</strong>   
                <input name="for_rgieField" type="text" id="for_rgieField" size="" value="<%=(for_rgie==null)?"":for_rgie%>">
             <br><br><strong>Telefone :</strong>   
                <input name="for_telefoneField" type="text" id="for_telefoneField" size="" value="<%=(for_telefone==null)?"":for_telefone%>">
             <br><br><strong>Fax :</strong>   
                <input name="for_faxField" type="text" id="for_faxField" size="" value="<%=(for_fax==null)?"":for_fax%>">
             <br><br><strong>Celular :</strong>   
                <input name="for_celularField" type="text" id="for_celularField" size="" value="<%=(for_celular==null)?"":for_celular%>">				
             <br><br><strong>Email :</strong>   
                <input name="for_emailField" type="text" id="for_emailField" size="" value="<%=(for_email==null)?"":for_email%>">				
          </p>      
      </td>	  
    </tr>  
    <tr>  
      <td height="" bgcolor="#5fec5f" style="text-align:center"><p>   
          <input style="border-radius: 8px;"type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
          <input style="border-radius: 8px;"type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
          <input style="border-radius: 8px;"type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
          <input style="border-radius: 8px;"type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
          <input style="border-radius: 8px;"type="button" onClick="enviar('listar')" name="bt" value="listar">  
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