function GetPropertyService($http) {
  this.getProperty = function () {
    return $http.get('/property.json')
  };
}

GetPropertyService.$inject = ['$http'];

angular
  .module('Realesttools')
  .service('GetPropertyService', GetPropertyService);