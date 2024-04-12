 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar"/>  
    <html>  
    <head>  
    <title>Listar</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="contapagar.jsp">  
     
   <p><strong>Tabela Contas a Pagar </strong></p>  
   <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Codigo  
    </strong></td> 
	<td width=50><strong>  
       Valor
    </strong></td> 	
    <td width=50><strong>  
       Data de Vencimento
    </strong></td>      
    <td width=50><strong>  
       Data de Pagamento
    </strong></td>  
    <td width=50><strong>  
      Nota Fiscal
   </strong></td> 
   <td width=50><strong>  
      Observacao
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
                <%out.print(temp.getString("cp_codigo"));%>  
          </td>  
           <td width=120>  
                <%out.print(temp.getString("cp_valorconta"));%>  
          </td>  
           <td width=120>  
                <%out.print(temp.getString("cp_datavencimento"));%>  
          </td> 
			 <td width=120>  
                <%out.print(temp.getString("cp_datapagamento"));%>  
          </td>
          <td width=50>  
            <%out.print(temp.getString("nf_codigo"));%>  
          </td> 
          <td width=120>  
            <%out.print(temp.getString("cp_observacoes"));%>  
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