var app = angular.module('TecsApp',[]);//generate app
//HEADER CONTROLLER
app.controller('CtrlHeader',['$scope',function($scope){
	console.log('CtrlHeader is ready');
}]);
//TABULAR CONTROLLER
app.controller('CtrlTabular', ['$scope', function($scope){
	console.log('CtrlTabular is ready');
}]);
//BARANG CONTROLLER
app.controller('CtrlBarang', ['$scope', function($scope){
	$scope.items = [1,2,3,4,5,6,7,8,9,10,11,12];
}])