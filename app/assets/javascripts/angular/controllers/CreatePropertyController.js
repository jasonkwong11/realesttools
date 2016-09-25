function CreatePropertyController(GetPropertyService) {
  var ctrl = this;

  ctrl.property = ["Property One", "Two", "Three", "Four"];
  ctrl.comps = [];

  GetPropertyService
    .getProperty()
    .then(function(res){
      ctrl.property = res.data;
    });

}

angular
  .module('Realesttools')
  .controller('CreatePropertyController', CreatePropertyController)