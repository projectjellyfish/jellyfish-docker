(function() {
  'use strict';

  angular.module('app.resources')
    .factory('DockerData', DockerDataFactory);

  /** @ngInject */
  function DockerDataFactory($resource) {
    var base = '/api/v1/docker/providers/:id/:action';
    var DockerData = $resource(base, {action: '@action', id: '@id'});

    // PLACEHOLDER FOR FUNCTIONS TO BE ADDED LATER

    return DockerData;
  }
})();
