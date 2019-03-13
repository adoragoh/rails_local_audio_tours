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
    // markers.forEach((marker) => {
    // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // <-- add this
    // new mapboxgl.Marker()
    //   .setLngLat([ marker.lng, marker.lat ])
    //   .setPopup(popup) // <-- add this
    //   .addTo(map);
    // });


    //Winson: Just added custom marker
    markers.forEach((marker) => {
      // Create a HTML element for your custom marker
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
      element.style.border = '1px solid grey';
      element.style.borderRadius = '50%';
      element.style.backgroundColor = "white";
      element.style.padding = "2px";


      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
        .setHTML(marker.infoWindow.content))
        .addTo(map);
    });

    // map resize when tab opened on tours#index page
    const resizeMap = () => {
      setTimeout( () => {
        map.resize();
      }, 1);
    }

    document.querySelector('.js-refresh-size').addEventListener('click', resizeMap);
    document.querySelector('.js-refresh-size').addEventListener('touchstart', resizeMap);


    fitMapToMarkers(map, markers);
    addMarkersToMap(map, markers);
  }




};


export { initMapbox };
