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
        controller: 'PropertyController as ctrl',
        resolve: {
         
        }
      })

    $urlRouterProvider.otherwise('/');
  });