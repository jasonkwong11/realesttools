function PropertyController($scope, Property, $stateParams) {
  var ctrl = this;

  ctrl.property = Property.get({id: $stateParams.id});
  ctrl.comps = Property.query();

  console.log("THIS IS PROPERTY:")
  console.log(ctrl.property)
  
  console.log("THIS IS COMPS:")
  console.log(ctrl.comps)

}

PropertyController.$inject = ['$scope', 'Property', '$stateParams'];

angular
  .module('Realesttools')
  .controller('PropertyController', PropertyController)