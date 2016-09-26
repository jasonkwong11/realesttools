 function PropertyController($scope, $stateParams, GetPropertyService) {
  
  var ctrl = this;

  GetPropertyService.getProperty()
      .then(function(data){
         ctrl.property = data;
      });

}
PropertyController.$inject = ['$scope', '$stateParams', 'GetPropertyService'];

angular
  .module('Realesttools')
  .controller('PropertyController', PropertyController)
