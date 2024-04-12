 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_vendas.Conexao_vendas"/> 
 <html>  
 <head>  
 <title>Alterar</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="vendas.jsp">  
   

 <jsp:setProperty name="con" property="ven_codigo" value='<%=Integer.parseInt(request.getParameter("ven_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="fun_codigo" value='<%=Integer.parseInt(request.getParameter("fun_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="tpg_codigo" value='<%=Integer.parseInt(request.getParameter("tpg_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="nf_codigo" value='<%=Integer.parseInt(request.getParameter("nf_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="ven_datavenda" value='<%=request.getParameter("ven_datavendaField")%>'/>  
 <jsp:setProperty name="con" property="ven_valortotal" value='<%=request.getParameter("ven_valortotalField")%>'/>  
 <jsp:setProperty name="con" property="ven_observacoes" value='<%=request.getParameter("ven_observacoesField")%>'/>  

 <p><strong>Tabela Compras </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
      <td width=50><strong>  
       Codigo  
      </strong></td> 
	   <td width=50><strong>  
       Funcionario
      </strong></td> 	
      <td width=50><strong>  
       Forma de Pagamento
      </strong></td>      
      <td width=50><strong>  
       Nota Fiscal
      </strong></td>  
      <td width=50><strong>  
        Data da Venda
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
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
       {           
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
          <tr>  
           <td width=100>  
             <%out.print(temp.getString("ven_codigo"));%>  
          </td>  
          <td width=100>  
            <%out.print(temp.getString("fun_codigo"));%>  
         </td>
         <td width=100>  
            <%out.print(temp.getString("tpg_codigo"));%>  
         </td>
         <td width=100>  
            <%out.print(temp.getString("nf_codigo"));%>  
         </td>
           <td width=120>  
            <%out.print(temp.getString("ven_datacompra"));%>  
          </td>  
           <td width=120>  
            <%out.print(temp.getString("ven_valortotal"));%>  
          </td> 
			<td width=120>  
            <%out.print(temp.getString("ven_observacoes"));%>  
          </td>
		  </tr>  
          <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema/vendas.jsp?status=Registro nao encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
      
 %>  
 </table>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
 </p>    
 <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("ven_codigoField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 