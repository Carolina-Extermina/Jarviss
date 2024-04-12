 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_tipopagto.Conexao_tipopagto"/>  
    <html>  
    <head>  
    <title>Listar</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="tipopagto.jsp">  
     
   <p><strong>Tabela Tipo de Pagamento </strong></p>  
   <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Codigo  
      </strong></td> 
	   <td width=50><strong>  
       Descricao
      </strong></td> 
      <td width=50><strong>  
       Qtde de parcelas
      </strong></td>
      <td width=50><strong>  
       Situacao
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
                <%out.print(temp.getString("tpg_codigo"));%>  
          </td>  
          <td width=100>  
               <%out.print(temp.getString("tpg_descricao"));%>  
         </td> 
         <td width=100>  
            <%out.print(temp.getString("tpg_qtde"));%>  
         </td>  
         <td width=100>  
          <%out.print(temp.getString("tpg_ativo"));%>  
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