<%--
  Created by IntelliJ IDEA.
  User: evgenijborskov
  Date: 10.09.20
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Список тем по AngularJS
                        <small>содержание</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">Список тем по AngularJS</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:url value="/uploadFile" var="fileUploadControllerURL" />
            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">
                    <div>
                        <h3>AngularJS stringiy и parse</h3>
                        <a href="/angularjson.html">Объекты, массивы в JS и функции stringiy и parse</a>
                    </div>
                    <div>
                        <h3>AngularJS Expressions</h3>
                        <a href="/expressions.html">Пример выражений в AngularJS</a>
                    </div>
                    <div>
                        <h3>AngularJS Bind-Model</h3>
                        <a href="/ng-bind-model.html">Связывание ng-bind</a>
                    </div>
                    <div>
                        <h3>AngularJS Two-way binding</h3>
                        <a href="/twowaybind.html">Двустороннее связывание</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-class</h3>
                        <a href="/ng-class.html">Директива ng-class</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-show</h3>
                        <a href="/ng-click-show.html">Директивы ng-click, ng-show</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-if</h3>
                        <a href="/ng-if-switch.html">Директивы ng-if, ng-switch</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-init</h3>
                        <a href="/ng-init.html">Директива ng-init</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-repeat</h3>
                        <a href="/ng-repeat.html">Директива ng-repeat</a>
                    </div>
                    <div>
                        <h3>AngularJS Dependency Injection</h3>
                        <a href="/angulardi.html">Внедрение зависимостей в AngularJS</a>
                    </div>
                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:template>
