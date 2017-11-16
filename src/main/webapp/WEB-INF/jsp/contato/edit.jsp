<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="well bs-component">
	<form class="form-horizontal" action="/update" method="post"
		modelAttribute="contato">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<fieldset>
			<legend>Edit</legend>
			<form:errors path="*" cssClass="alert alert-danger" element="div" />
			<input class="form-control" id="id" name="id" required
				placeholder="Id" type="hidden" value="${contato.id }">
			<div class="form-group">
				<label for="nome" class="col-lg-2 control-label">Nome</label>
				<div class="col-lg-10">
					<input class="form-control" id="nome" name="nome" required
						placeholder="Nome" type="text" value="${contato.nome }">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-lg-2 control-label">E-mail</label>
				<div class="col-lg-10">
					<input class="form-control" id="email" name="email" required
						placeholder="E-mail" type="email" value="${contato.email }">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-lg-2 control-label">Telefone</label>
				<div class="col-lg-10">
					<input class="form-control telefone" id="telefone" name="telefone" required
						placeholder="Telefone" type="text" value="${contato.telefone }">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-lg-2 control-label">Endereço</label>
				<div class="col-lg-10">
					<input class="form-control" id="endereco" name="endereco" required
						placeholder="Endereco" type="text" value="${contato.endereco }">
				</div>
			</div>
			<!-- </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-10">
        <input class="form-control" id="inputPassword" placeholder="Password" type="password">
        <div class="checkbox">
          <label>
            <input type="checkbox"> Checkbox
          </label>
        </div>
      </div>
    </div> -->
			<!-- <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Textarea</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
        <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Radios</label>
      <div class="col-lg-10">
        <div class="radio">
          <label>
            <input name="optionsRadios" id="optionsRadios1" value="option1" checked="" type="radio">
            Option one is this
          </label>
        </div>
        <div class="radio">
          <label>
            <input name="optionsRadios" id="optionsRadios2" value="option2" type="radio">
            Option two can be something else
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Selects</label>
      <div class="col-lg-10">
        <select class="form-control" id="select">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <br>
        <select multiple="" class="form-control">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>
    </div> -->
			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
					<button type="reset" class="btn btn-default">Reset</button>
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>
<script>
		jQuery(function($) {
			$(".telefone").mask("99999999999");
		});
</script>