#= require_self
#= require_tree ./templates
#= require_tree ./factories
#= require_tree ./controllers/home
#= require_tree ./controllers/notes
#= require_tree ./controllers/sessions
#= require_tree ./directives
#= require angular-cookie/angular-cookie

Organizer = angular.module('Organizer', ['ngRoute', 'ngResource', 'ngAnimate', 'templates'])

Organizer.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/notes', { templateUrl: 'notesIndex.html', controller: 'NotesCtrl' } )

  $routeProvider.otherwise({ templateUrl: 'homeIndex.html', controller: 'IndexCtrl' } )
])