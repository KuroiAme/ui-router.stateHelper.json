JSON.mapper = ($http) ->

  #crude first implementation
  getJSON = (url) ->
    $http.get(url)
    .then(json) ->
       return json

  return json: getJSON

JSON.mapper
.$inject = [
  '$translate'
]
angular
.module('daniel.json.mapping.routes')
.factory('d.json', JSON.mapper)