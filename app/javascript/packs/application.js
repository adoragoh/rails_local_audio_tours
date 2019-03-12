//= require jquery3
//= require popper
//= require bootstrap-sprockets

// import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initGotoMap } from '../components/goto_map';
import { initZomato } from '../components/zomato.js';
import { autoPlay} from '../components/autoplay.js';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { hello } from '../components/navbar_v2.js';
import { toggleIndex } from '../components/index_toggle.js';

toggleIndex();
initMapbox();
initGotoMap();
initZomato();
autoPlay();
hello();


