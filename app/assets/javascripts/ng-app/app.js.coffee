angular.module("AppRouter", [
  "ngAnimate"
  "ui.router"
  "templates"
]).config ($stateProvider, $urlRouterProvider, $locationProvider) ->

  ###*
  Route and States
  ###

  # an abstract state that just serves as a
  # parent for the below child states

  # the default route when someone hits dashboard

  # this is /dashboard/two

  # this is /dashboard/three
  $stateProvider.state("home",
    url: "/"
    templateUrl: "home.html"
    controller: "HomeCtrl"
  )
  # ).state("dashboard",
  #   abstract: true
  #   url: "/dashboard"
  #   templateUrl: "dashboard/layout.html"
  # ).state("dashboard.one",
  #   url: ""
  #   templateUrl: "dashboard/one.html"
  # ).state("dashboard.two",
  #   url: "/two"
  #   templateUrl: "dashboard/two.html"
  # ).state "dashboard.three",
  #   url: "/three"
  #   templateUrl: "dashboard/three.html"


  # default fallback route
  $urlRouterProvider.otherwise "/"

  # enable HTML5 mode for SEO
  $locationProvider.html5Mode true
  return
