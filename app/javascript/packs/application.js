import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from "../plugins/init_autocomplete";
import createNewGlider from "./glider";
import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

initMapbox();

initAutocomplete();

//Run all Glider Carousels.
document.querySelectorAll('.glider').forEach((glider) => {
  createNewGlider(glider.dataset.id)
})
