 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/> 
 <html>  
 <head>  
 <title>Excluir</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="compras.jsp">  
   
 <p><strong>Tabela Compras </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
   <tr>  
      <td width=50><strong>  
        Codigo  
       </strong></td> 
       <td width=50><strong>  
        Tipo de Pagamento
       </strong></td> 	
       <td width=50><strong>  
        Fornecedor
       </strong></td>      
       <td width=50><strong>  
        Nota Fiscal
       </strong></td> 
       <td width=50><strong>  
          Data da Compra
       </strong></td> 
       <td width=50><strong>  
          Valor Total
       </strong></td> 
       <td width=50><strong>  
          Observacoes
       </strong></td>  
     </tr>  
   
   
 <%      
    try {  
   
       con.setCom_codigo(Integer.parseInt(request.getParameter("com_codigoField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
             <tr>  
           <td width=50>  
                <%out.print(temp.getString("com_codigo"));%>  
          </td>  
           <td width=50>  
                <%out.print(temp.getString("tpg_codigo"));%>  
          </td>  
           <td width=50>  
                <%out.print(temp.getString("for_codigo"));%>  
          </td> 
			<td width=50>  
                <%out.print(temp.getString("nf_codigo"));%>  
          </td>
          <td width=100>  
            <%out.print(temp.getString("com_datacompra"));%>  
         </td>
         <td width=100>  
            <%out.print(temp.getString("com_valortotal"));%>  
         </td>
         <td width=100>  
            <%out.print(temp.getString("com_observacoes"));%>  
         </td>
		  </tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema/compras.jsp?status=Registro nao encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
   
            
 %>  
 </table>  
   <p> </p>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
     </p>  
   <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigoField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 