//= require jquery3
//= require popper
//= require bootstrap-sprockets

// import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initGotoMap } from '../components/goto_map';
import {initZomato} from '../components/zomato.js';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();
initGotoMap();
initZomato();

$('#myModal').on('shown.bs.modal', function() {
  $('#myInput').focus()
})
