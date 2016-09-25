angular
  .module('Realesttools',[
    'ui.router',
    'ngResource',
    'templates',
    'angularUtils.directives.dirPagination'
    ]);

  .config(function ($stateProvider, $urlRouterProvider, paginationTemplateProvider) {
    paginationTemplateProvider.setPath('pagination/mine.tpl.html');

    $stateProvider

      .state('home', {
        url: "/",
        templateUrl: "index.html",
      })

      .state('property', {
        url: '/property',
        templateUrl: '/app/views/properties/show.html'
        controller: 'CreatePropertyCtrl as ctrl'
      })

    $urlRouterProvider.otherwise('/');
  })