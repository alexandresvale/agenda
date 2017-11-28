Agenda Sample with Spring Boot, JDBC Templates, JSP &amp; Sitemesh 3
============================

Requirements
------------
* [Java Platform (JDK) 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Apache Maven 3.x](http://maven.apache.org/)
* [MySQL 5.x](https://dev.mysql.com/downloads/mysql/)

Quick start
-----------
1. Setup database username and password in `application.properties` file.
2. `
create database agenda;
use agenda;
create table contato(
	id INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    telefone VARCHAR(14) NOT NULL,
    email varchar(255),
    endereco varchar(255),
    PRIMARY KEY (id),
    idade integer
);`
3. `mvn spring-boot:run`
4. Point your browser to [http://localhost:8080/](http://localhost:8080/)
