/*
* Этот файл создает зависимости по требованию.
* После того как загрузка дойдет до вызова контроллера factoryController
* будет произведена инициализация переменных с помощью метода factory().
*/

angular.module("myApp")
.value("someFactoryValue", "AngularJS framework")
.factory("angularFactory", function(someFactoryValue) {
    var angularFactory = {
        'angularVersion': someFactoryValue,
        'siteName': 'javastudy.ru',
        getAngularVersion: function() {
            alert('Angular version is' + this.angularVersion);
        }
    };
    return angularFactory;
}).controller("factoryController", function($scope, angularFactory) {
    alert(angularFactory.angularVersion);
    $scope.angularVersion = angularFactory.angularVersion;
    console.log(angularFactory.angularVersion);
    angularFactory.getAngularVersion();
});
