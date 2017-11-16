<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h3>Informações detalhadas</h3>
<form class="form-horizontal"
	action="${pageContext.request.contextPath }/contato/" method="get">
	<table class="table table-striped table-bordered table-hover">
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
			<a class="btn btn-default"
				href="${pageContext.request.contextPath }/update/${contato.id}">Update</a>
			<a class="btn btn-default" href="#"
							data-href="delete/${contato.id}" data-toggle="modal"
							data-target="#confirm-delete" data-toggle2="tooltip"
							data-placement="bottom" title="remover">Delete</a>
		</div>
	</div>
</form>
	<!-- Modal -->
	<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" style="text-align: center;">Confirmação</h4>
				</div>
				<div class="modal-body" style="text-align: center;">
					<p>O contato será excluído. Deseja prosseguir?</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
					<a class="btn btn-warning btn-ok">Sim</a>
				</div>
			</div>

		</div>
	</div>
	<script>
		$('#confirm-delete').on(
				'show.bs.modal',
				function(e) {
					$(this).find('.btn-ok').attr('href',
							$(e.relatedTarget).data('href'));
				});
		$(document).ready(function() {
			$('[data-toggle2="tooltip"]').tooltip();
		});
	</script>
