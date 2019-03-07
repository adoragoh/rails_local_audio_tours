import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const markers = JSON.parse(mapElement.dataset.markers);

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [ markers[0].lng, markers[0].lat],
      zoom: 12
    });
    markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // <-- add this
    // new mapboxgl.Marker()
    //   .setLngLat([ marker.lng, marker.lat ])
    //   .setPopup(popup) // <-- add this
    //   .addTo(map);
    });

    var userLocationControl = new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      showUserLocation: true
    })

    map.addControl(userLocationControl);

      var directionsControl = new MapboxDirections({
        accessToken: mapboxgl.accessToken,
        interactive: false,
        profile:'mapbox/walking',
        controls:{
          inputs:false,
          instructions:false,
          profileSwitcher:false
        }
      })

      map.addControl(directionsControl, 'top-left');

      const addRouteToMap = (currentUserLat, currentUserLon) => {
        directionsControl.setOrigin([currentUserLon, currentUserLat]);
        directionsControl.setDestination([mapElement.dataset.destinationLon, mapElement.dataset.destinationLat]);
      }


      map.on('load', function(){
        userLocationControl.trigger();
      });

      userLocationControl.on('geolocate', function(userLocation) {
        addRouteToMap(userLocation.coords.latitude, userLocation.coords.longitude);
      });

      userLocationControl.on('error', function(error) {
        alert(error.message);
      });


    // fitMapToMarkers(map, markers);
    // addMarkersToMap(map, markers);
  }



};


export { initMapbox };
