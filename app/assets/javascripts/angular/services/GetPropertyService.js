function GetPropertyService($http) {
  this.getProperty = function () {
    var property = [];
    return $http.get('/property.json')
  };

}

GetPropertyService.$inject = ['$http'];

angular
  .module('Realesttools')
  .service('GetPropertyService', GetPropertyService);