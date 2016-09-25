function Property($resource) {
  return $resource('/property.json', 
    { method: 'getProperty', q: '*' }, // Query parameters
    {'query': { method: 'GET' }}
  )
}

Property.$inject = ['$resource'];

angular
  .module("Realesttools")
  .factory("Property", Property);