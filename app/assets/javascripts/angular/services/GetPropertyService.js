function GetPropertyService($http) {
  this.getProperty = function () {
    return $http.get('/property.json')
  };

}

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

GetPropertyService.$inject = ['$http'];

angular
  .module('Realesttools')
  .service('GetPropertyService', GetPropertyService);