<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="page-header">
	<h3>Página de Contatos</h3>
	<p align="justify"></p>
</div>
<s:url value="/" var="advancedSearch" />

<sf:form method="post" modelAttribute="contato"
	action="${advancedsearch}">
	<div class="panel panel-default">
		<div class="panel-heading">Filtro</div>

		<div class="panel-body">
			<div class="row">
				<%-- <input class="form-control" id="email" name="email"
					placeholder="E-mail" type="hidden" value="${contato.email }">
				<input class="form-control" id="endereco" name="endereco"
					placeholder="Endereco" type="hidden" value="${contato.endereco }"> --%>
				<div class="col-sm-3">
					<div class="form-group">
						<label class="control-label" for="nome"> Nome: </label> <input
							class="form-control" id="nome" name="nome" placeholder="Nome"
							type="text" value="${contato.nome }">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label class="control-label" for="email"> E-mail: </label> <input
							class="form-control" id="email" name="email" placeholder="Email"
							type="text" value="${contato.email }">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label class="control-label" for="endereco"> Endereço: </label> <input
							class="form-control" id="endereco" name="endereco"
							placeholder="Endereço" type="text" value="${contato.endereco }">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label class="control-label" for="telefone">Telefone: </label> <input
							class="form-control telefone" id="telefone" name="telefone"
							placeholder="Telefone" type="text" value="${contato.telefone }">
					</div>
				</div>
			</div>

			<div class="form-group">
				<button class="btn btn-default" type="submit">
					<span class="fa fa-search"></span> Pesquisar
				</button>
			</div>
		</div>
	</div>
</sf:form>
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<c:choose>
			<c:when test="${not empty contatos}">
				<thead>
					<tr>
						<!-- <th>#</th> -->
						<th>Nome</th>
						<th>E-mail</th>
						<th>Telefone</th>
						<th>Endereço</th>
						<th colspan="1">Opções</th>
					</tr>
				</thead>
			</c:when>
			<c:when test="${empty contatos }">

				<p>Não há contatos, comece adicionando um!</p>
			</c:when>
		</c:choose>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}</td>
				<td>${contato.email}</td>
				<td>${contato.telefone}</td>
				<td>${contato.endereco}</td>
				<td><a class="btn btn-default btn-sm"
					href="/get/${contato.id }" data-toggle2="tooltip"
					data-placement="bottom" title="exibir"><i
						class="fa fa-info-circle" aria-hidden="true"></i></a></td>
			</tr>
		</c:forEach>
	</table>
</div>
<div id="buttons">
	<a id="button" class="btn btn-default"
		href="${pageContext.request.contextPath }/new"><span
		class="fa fa-plus"></span> Novo </a><a id="button" class="btn btn-default"
		href="${pageContext.request.contextPath }/advanced-search"><span
		class="fa fa-search"></span> Busca Avançada </a>
</div>
<script>
	jQuery(function($) {
		$(".telefone").mask("99999999999");
	});
</script>
