 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
    <html>  
    <head>  
    <title>Listar</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="compras.jsp">  
     
   <p><strong>Tabela Compras </strong></p>  
   <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Codigo  
      </strong></td> 
	   <td width=100><strong>  
       Tipo de Pagamento
      </strong></td> 	
      <td width=100><strong>  
       Fornecedor
      </strong></td>      
      <td width=100><strong>  
       Nota Fiscal
      </strong></td> 
      <td width=100><strong>  
         Data da Compra
      </strong></td> 
      <td width=100><strong>  
         Valor Total
      </strong></td> 
      <td width=100><strong>  
         Observacoes
      </strong></td>  
    </tr>  
     
     
   <%      
      try {  
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
        
      }catch (Exception e) {  
         e.printStackTrace();  
      }  
        
   %>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  