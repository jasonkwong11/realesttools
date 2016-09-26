function PropertyController($scope, $stateParams, GetPropertyService) {
  var ctrl = this;
  $scope.property;

  GetPropertyService
    .getProperty().success(function(data){
      console.log("GREATE SUCCESS")

    $scope.property = data;
    console.log($scope.property);
  });
  

  //ctrl.property = Property.get({id: $stateParams.id});
  //ctrl.comps = Property.query();

  //console.log("THIS IS PROPERTY:")
 // console.log(ctrl.property)
  
  //console.log("THIS IS COMPS:")
//  console.log(ctrl.comps)

}

PropertyController.$inject = ['$scope', '$stateParams', 'GetPropertyService'];

angular
  .module('Realesttools')
  .controller('PropertyController', PropertyController)
