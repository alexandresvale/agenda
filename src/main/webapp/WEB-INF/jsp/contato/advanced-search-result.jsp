<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row">
		<div class="page-header">
			<h2>
				Pesquisa de Contatos <small>Agenda Pessoal</small>
			</h2>
			<p align="justify"></p>
		</div>
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<c:choose>
					<c:when test="${not empty contatos}">
					<h3>Contatos encontrados</h3>
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

						<h3>Contato não encontrado.</h3>
					</c:when>
				</c:choose>
				<c:forEach var="contato" items="${contatos}">
					<tr>
						<td>${contato.nome}</td>
						<td>${contato.email}</td>
						<td>${contato.telefone}</td>
						<td>${contato.endereco}</td>
						<td><a class="btn btn-primary btn-sm"
							href="/get/${contato.id }" data-toggle2="tooltip"
							data-placement="bottom" title="exibir"><i
								class="fa fa-info-circle" aria-hidden="true"></i></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="row">
		<div id="buttons">
			<a id="button"  class="btn btn-primary" href="javascript:history.back()">Voltar&ensp;<span
				class="fa fa-undo"></span></a><a id="button"  class="btn btn-primary" href="${pageContext.request.contextPath }/new">Novo&ensp;<span
				class="fa fa-plus"></span></a><a id="button" class="btn btn-primary"
				href="${pageContext.request.contextPath }/advanced-search">Busca
				Avançada&ensp;<span class="fa fa-search"></span>
			</a>
		</div>
	</div>
</div>