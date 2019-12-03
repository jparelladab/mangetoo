import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from "../plugins/init_autocomplete";
import createNewGlider from "./glider";
import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

import "../plugins/init_flatpickr";
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#new-booking-form-submit', {
  title: "New booking created!",
  text: "Enjoy your next foodie adventure!",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#go-to-visits-link');
    link.click();
  }
});


initMapbox();

initAutocomplete();

//Run all Glider Carousels.
document.querySelectorAll('.glider').forEach((glider) => {
  createNewGlider(glider.dataset.id)
})
