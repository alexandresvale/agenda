<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
		<h2>Caixa</h2>
		<form class="form-horizontal"
			action="${pageContext.request.contextPath }/contato/" method="get">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Campo</th>
						<th>Valor</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Nome</td>
						<td>${contato.nome }</td>
					</tr>
					<tr>
						<td>E-mail</td>
						<td>${contato.email }</td>
					</tr>
					<tr>
						<td>Telefone</td>
						<td>${contato.telefone}</td>
					</tr>
					<tr>
						<td>Endereço</td>
						<td>${contato.endereco}</td>
					</tr>
				</tbody>
			</table>

			<div class="container">
				<div class="form-group">

					<button class="btn btn-default" type="button" name="back"
						onclick="history.back()">Back</button>
					<a class="btn btn-primary"
						href="${pageContext.request.contextPath }/update/${contato.id}">Update</a>
					<a class="btn btn-warning"
						href="${pageContext.request.contextPath }/delete/${contato.id}">Delete</a>
				</div>
			</div>
		</form>
	</div>