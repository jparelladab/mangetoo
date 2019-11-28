import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from "../plugins/init_autocomplete";
import createNewGlider from "./glider";

initMapbox();

initAutocomplete();

//Run all Glider Carousels.
document.querySelectorAll('.glider').forEach((glider) => {
  createNewGlider(glider.dataset.id)
})
