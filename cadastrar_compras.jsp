 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
 <html>  
 <head>  
 <title>Cadastrar</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="compras.jsp">  
   
 <p><strong>Tabela - Compras </strong></p>  
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
      Data de Compra
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
       con.setTpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField")));
       con.setFor_codigo(Integer.parseInt(request.getParameter("for_codigoField")));
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));
       con.setCom_datacompra(request.getParameter("com_datacompraField"));  
       con.setCom_valortotal(request.getParameter("com_valortotalField"));  
	    con.setCom_observacoes(request.getParameter("com_observacoesField"));  
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("com_codigoField").equals(temp.getString("com_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema/compras.jsp?status=Registro ja existente");  
         
       do{  
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
       <%}while (temp.next());  
      
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 