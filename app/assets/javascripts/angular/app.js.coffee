
app_router = angular.module('AppRouter', [
  'ui.compat'
]).config(['$stateProvider', '$urlRouterProvider', '$locationProvider', ($stateProvider, $urlRouterProvider, $locationProvider)->
  $stateProvider
    .state('test', {
      url: '/home/test'
      templateUrl: '/home/test'
    })
    .state('sign_up', {
      url: '/users/sign_up'
      templateUrl: '/users/sign_up'
    })
    .state('sign_in', {
      url: '/users/sign_in'
      templateUrl: '/users/sign_in'
    })


  # # default callbacks
  # $urlRouterProvider.otherwise("/");

  # enable HTML5 Mode for SEO
  $locationProvider.html5Mode(true)
])

angular.bootstrap(document.body, ['AppRouter'])

