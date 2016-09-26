angular
  .module('Realesttools',[
    'ui.router',
    'ngResource',
    'templates'
    ])

  .config(function ($stateProvider, $urlRouterProvider) {

    $stateProvider

      .state('home', {
        url: "/",
        templateUrl: "index.html",
      })

      .state('property', {
        url: '/property',
        templateUrl: '/app/views/properties/show.html',
        controller: 'PropertyController',
        resolve: {
          property: function(GetPropertyService){
            return GetPropertyService.getProperty();
          }
        }
      })

    $urlRouterProvider.otherwise('/');
  });