angular
  .module('Realesttools',[
    'templates',
    'ui.router',
    'controllers',
    ]);
  .controller('CreateLectureCtrl', CreateLectureCtrl)
  .config(function ($stateProvider) {
    $stateProvider
      .state('property', {
        url: '/property',
        templateUrl: '/app/views/properties/show.html'
        controller: 'CreatePropertyCtrl as ctrl'
      })
  })