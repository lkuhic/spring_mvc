/*
Определяем некий root элемент (rootObject = someObject),
который затем используется на html странице с помощью выражения {{rootObject}}.
*/

angular.module("myApp", ['serviceModule'])
    .value("someObject", {
        objectName: "Mordor",
        objectValue: "Default City",
        getObjectDetails: function (){
            return this.objectName + " is " + this.value;
        }
    })
    .controller("valueController", function ($scope, someObject)
    {
        $scope.rootObject = someObject;
    });
