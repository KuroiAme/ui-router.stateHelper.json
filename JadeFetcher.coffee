Jadefetcher = (jade,JSONfetcher) ->

fn = jade.compile(jadeTemplate)
htmlOutput = fn(maintainer:
  name: 'Forbes Lindesay'
  twitter: '@ForbesLindesay'
  blog: 'forbeslindesay.co.uk')

return jade: htmlOutput

fetcher
.$inject = [
  'jade'
  'd.json'
]

angular
.module('daniel.json')
.factory('fetcher', fetcher)