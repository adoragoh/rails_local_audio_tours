import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('goto-map');

if(mapElement) {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

  const map = new mapboxgl.Map({
    // Looks for goto-map id in html file
    container: 'goto-map',
    style: 'mapbox://styles/mapbox/streets-v10',
    center: [-122.662323, 45.523751], // starting position
    zoom: 12
  });

  // set the bounds of the map
  const bounds = [[-123.069003, 45.395273], [-122.303707, 45.612333]];
  map.setMaxBounds(bounds);

  // initialize the map canvas to interact with later
  const canvas = map.getCanvasContainer();

  // an arbitrary start will always be the same
  // only the end or destination will change
  const start = [-122.662323, 45.523751];

  // create a function to make a directions request
  function getRoute(end) {
    // make a directions request using cycling profile
    // an arbitrary start will always be the same
    // only the end or destination will change
    const start = [-122.662323, 45.523751];
    const second = [-122.68,45.6];
    const url = 'https://api.mapbox.com/directions/v5/mapbox/cycling/' + start[0] + ',' + start[1] + ';' + second[0] + ',' + second[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken;
    console.log(url);

    // make an XHR request https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
    const req = new XMLHttpRequest();
    req.responseType = 'json';
    req.open('GET', url, true);
    req.onload = function() {
      const data = req.response.routes[0];
      const route = data.geometry.coordinates;
      const geojson = {
        type: 'Feature',
        properties: {},
        geometry: {
          type: 'LineString',
          coordinates: route
        }
      };
      // if the route already exists on the map, reset it using setData
      if (map.getSource('route')) {
        map.getSource('route').setData(geojson);
      } else { // otherwise, make a new request
        map.addLayer({
          id: 'route',
          type: 'line',
          source: {
            type: 'geojson',
            data: {
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'LineString',
                coordinates: geojson
              }
            }
          },
          layout: {
            'line-join': 'round',
            'line-cap': 'round'
          },
          paint: {
            'line-color': '#3887be',
            'line-width': 5,
            'line-opacity': 0.75
          }
        });
      }
      // // add turn instructions here at the end
      // // get the sidebar and add the instructions
      // const instructions = document.getElementById('instructions');
      // const steps = data.legs[0].steps;

      // const tripInstructions = [];
      // for (let i = 0; i < steps.length; i++) {
      //   tripInstructions.push('<br><li>' + steps[i].maneuver.instruction) + '</li>';
      //   instructions.innerHTML = '<br><span class="duration">Trip duration: ' + Math.floor(data.duration / 60) + ' min 🚴 </span>' + tripInstructions;
      // }

    };
    req.send();
  }

  map.on('load', function() {
    // make an initial directions request that
    // starts and ends at the same location
    getRoute(start);

    // Add starting point to the map
    map.addLayer({
      id: 'point',
      type: 'circle',
      source: {
        type: 'geojson',
        data: {
          type: 'FeatureCollection',
          features: [{
            type: 'Feature',
            properties: {},
            geometry: {
              type: 'Point',
              coordinates: start
            }
          }
          ]
        }
      },
      paint: {
        'circle-radius': 10,
        'circle-color': '#3887be'
      }
    });
    // this is where the code from the next step will go
    map.on('click', function(e) {
      const coordsObj = e.lngLat;
      canvas.style.cursor = '';
      const coords = Object.keys(coordsObj).map(function(key) {
        return coordsObj[key];
      });
      const end = {
        type: 'FeatureCollection',
        features: [{
          type: 'Feature',
          properties: {},
          geometry: {
            type: 'Point',
            coordinates: coords
          }
        }
        ]
      };
      if (map.getLayer('end')) {
        map.getSource('end').setData(end);
      } else {
        map.addLayer({
          id: 'end',
          type: 'circle',
          source: {
            type: 'geojson',
            data: {
              type: 'FeatureCollection',
              features: [{
                type: 'Feature',
                properties: {},
                geometry: {
                  type: 'Point',
                  coordinates: coords
                }
              }]
            }
          },
          paint: {
            'circle-radius': 10,
            'circle-color': '#f30'
          }
        });
      }
      getRoute(coords);
    });
  });
}
