<%@page import="livraria.dominio.*"%>
<%@page import="java.util.List"%>
<%@page import="livraria.core.aplicacao.Resultado"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="SalvarCliente" method="post">
		<br><input type="submit" class="btn btn-primary" id="operacao" name="operacao" value="CONSULTAR" />
	</form>
	<%
		Resultado resultado = (Resultado) session.getAttribute("resultado");
		if(resultado !=null && resultado.getMsg() != null){
			out.print(resultado.getMsg());
		}
	%>
	
	<TABLE>
	   <TR>
	      <TH COLSPAN="17"><BR>
	      	<H3>CLIENTES</H3>
	      </TH>
	   </TR>
	   <TR>
	      <TH>Codigo</TH>
	      <TH>Nome</TH>
	      <TH>CPF</TH>
	      <TH>Genero</TH>
	      <TH>Data de nascimento</TH>
	      <TH>Tipo Telefone</TH>
	      <TH>Telefone</TH>
	      <TH>Email</TH>
	      <TH>Responsavel</TH>
	   </TR>
	   
	   <%
	   if (resultado != null) {
			List<EntidadeDominio> entidades = resultado.getEntidades();
			StringBuilder sbRegistro = new StringBuilder();
			StringBuilder sbLink = new StringBuilder();
			
			if(entidades != null){
				try{
				for (int i = 0; i < entidades.size(); i++) {
					Cliente c = (Cliente) entidades.get(i);
					sbRegistro.setLength(0);
					sbLink.setLength(0);
					
				//	<a href="nome-do-lugar-a-ser-levado">descrição</a>
					
					sbRegistro.append("<TR ALIGN='CENTER'>");
					
					
					sbLink.append("<a href=SalvarCliente?");
					sbLink.append("txtId=");
					sbLink.append(c.getId());						
					sbLink.append("&");
					sbLink.append("operacao=");
					sbLink.append("VISUALIZAR");
					sbLink.append(">");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());	
					sbRegistro.append(c.getId());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getNome());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getCpf());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getGenero());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getDtNas());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getTipoTel());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getTelefone());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getEmail());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("<TD>");
					sbRegistro.append(sbLink.toString());				
					sbRegistro.append(c.getResponsavel());
					sbRegistro.append("</a>");				
					sbRegistro.append("</TD>");
					
					sbRegistro.append("</TR>");
					
					out.print(sbRegistro.toString());
					
				}
				}catch(Exception e){
					
				}
			}
		}
	   
	   %>
	</TABLE>
</body>
</html>