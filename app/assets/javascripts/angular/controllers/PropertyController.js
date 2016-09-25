function PropertyController($scope, $stateParams, GetPropertyService) {
  var ctrl = this;

  GetPropertyService
  .getProperty()
    .then(function(response){
      if (response){
        console.log("GREATE SUCCESS");
        console.log(response.data);
        ctrl.property = response.data;
      } else {
        console.log("THE PROMISE RESOLVED BUT FAILED");
      }
    }, function(error){
      console.log("The promise was rejected, error!") 
  })
  

  //ctrl.property = Property.get({id: $stateParams.id});
  //ctrl.comps = Property.query();

  //console.log("THIS IS PROPERTY:")
 // console.log(ctrl.property)
  
  //console.log("THIS IS COMPS:")
//  console.log(ctrl.comps)

}

PropertyController.$inject = ['$scope', '$stateParams', 'GetPropertyService', 'property'];

angular
  .module('Realesttools')
  .controller('PropertyController', PropertyController)
