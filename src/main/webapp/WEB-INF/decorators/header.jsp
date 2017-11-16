<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/"><i class="fa fa-address-book-o"
				aria-hidden="true"></i> &nbspAgenda Pessoal Web</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-navbar-collapse">
			<ul class="nav navbar-nav">
				<!-- <li class="active"><a href="/">Início <span class="sr-only">(current)</span></a></li> -->
				<!-- <li><a href="/about/team">Sobre</a></li> -->
				<li><a href="/">Início</a></li>
				<li><a href="/new">Adicionar Contato</a></li>
				<li><a href="/advanced-search">Pesquisa Avançada</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li><a href="/about">Sobre</a></li> -->
				<!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li> -->
				<!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li> -->
			</ul>
		</div>
	</div>
</nav>
<div id="site">
	<sitemesh:write property="body" />
</div>