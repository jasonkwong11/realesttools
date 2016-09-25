function GetPropertyService($http) {
  this.getProperty = function () {
    return $http.get('/api/property.json')
  };
}

GetPropertyService.$inject = ['$http'];

angular
  .module('Realestinvestor')
  .service('GetPropertyService', GetPropertyService);