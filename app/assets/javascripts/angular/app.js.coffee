angular.module('AppRouter', [
  'ui.router', 'ngAnimate'
])

.run(['$rootScope', '$state', '$stateParams', ($rootScope,   $state,   $stateParams)->
  $rootScope.$state = $state
  $rootScope.$stateParams = $stateParams
])

.config(['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider
    .otherwise('/')

  $stateProvider
    .state('sign_up', {
      url: '/users/sign_up'
      templateUrl: '/users/sign_up'
    })
    .state('sign_in', {
      url: '/users/sign_in'
      templateUrl: '/users/sign_in'
    })
])