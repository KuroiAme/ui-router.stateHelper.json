JSONfetcher = ($http) ->

#crude first implementation
  getJSON = (url) ->
    $http.get(url)
    .then(json) ->
      return json

  return json: getJSON

JSON.mapper
.$inject = [
  '$translate',
  '$http'
]
angular
.module('daniel.json')
.factory(JSONfetcher, JSONfetcher)