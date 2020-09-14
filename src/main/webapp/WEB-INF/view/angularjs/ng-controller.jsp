<%--
  Created by IntelliJ IDEA.
  User: evgenijborskov
  Date: 14.09.20
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-temaplate>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Controller Inheritance AngularJS
                        <small>Controller inheritance</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">Controller Inheritance</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

                <%--файл с внешним контроллером--%>
            <spring:url value="/resources/angularjs/dependencies/externalController.js" var="appControllerLink"/>
            <script src="${appControllerLink}"></script>

            <script>
                <%--//получаем модуль angular--%>
                var app = angular.module('myApp');
                app.controller('FirstController', ['$scope', function($scope) {
                    $scope.zeroVar = '000';
                    $scope.firstVar = 'ABC';
                    $scope.secondVar = 'abc';
                    $scope.firstControllerCalled = false;
                }]);

                app.controller('SecondController', ['$scope', function($scope) {
                    $scope.firstVar = 'FOO';
                    $scope.secondVar = 'foo';
                }]);

                app.controller('ThirdController', ['$scope', function($scope) {
                    $scope.firstVar = 'BAR';
                    $scope.secondVar = 'bar';
                }]);

                app.controller('controllerMethodTest', ['$scope', function($scope) {
                    $scope.firstControllerCalled = false;

                    $scope.controllerMethod = function() {
                        $scope.firstControllerCalled = true;
                    }
                }]);

            </script>

                <%--<h3>Наследование контроллеров</h3>--%>
            <div ng-app="myApp">
                <div ng-controller="FirstController">
                    <table class="table">
                        <tr>
                            <td>Переменная firstVar</td>
                            <td>Переменная secondVar</td>
                            <td>Переменная zeroVar</td>
                        </tr>
                        <tr>
                            <td>{{ firstVar }}</td>
                            <td>{{ secondVar }}</td>
                            <td>{{ zeroVar }}</td>
                        </tr>
                        <tr ng-controller="SecondController">
                            <td>{{ firstVar }}</td>
                            <td>{{ secondVar }}</td>
                            <td>{{ zeroVar }}</td>
                        </tr>
                        <tr ng-controller="ThirdController">
                            <td>{{ firstVar }}</td>
                            <td>{{ secondVar }}</td>
                            <td>{{ zeroVar }}</td>
                        </tr>
                    </table>
                    <br />
                    <p>Кнопка внутри FirstController и controllerMethodTest:</p>
                    <div ng-controller="controllerMethodTest">
                        <button ng-click="controllerMethod()">controllerMethod</button> <br />
                        <br />
                        Метод, указанный в контроллере на этой странице - controllerMethod вызван: <b>{{ firstControllerCalled }}</b>
                    </div>
                    <br />

                    <p>Кнопка внутри FirstController и внутри внешнего контроллера externalController:</p>
                    <div ng-controller="externalController">
                        <button ng-click="externalControllerMethod()">externalControllerMethod</button> <br />
                        Метод внешнего котнроллера externalControllerMethod вызван: <b>{{ externalControllerMethodCalled }}</b>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
