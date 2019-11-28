import Glider from "glider-js";

const createNewGlider = (id) => {

    new Glider(document.querySelector('#gliderCarousel'+id), {

      // `auto` allows automatic responsive
      // width calculations
      slidesToShow: '1',
      slidesToScroll: '1',

      // should have been named `itemMinWidth`
      // slides grow to fit the container viewport
      // ignored unless `slidesToShow` is set to `auto`
      itemWidth: undefined,

      // if true, slides wont be resized to fit viewport
      // requires `itemWidth` to be set
      // * this may cause fractional slides
      exactWidth: false,

      // speed aggravator - higher is slower
      duration: .5,

      // dot container element or selector
      dots: '#gliderCarouselDots'+ id,

      // arrow container elements or selector
      arrows: {
        prev: '#gliderCarouselPrev'+ id,
        // may also pass element directly
        next: '#gliderCarouselNext'+ id,
      },

      // allow mouse dragging
      draggable: false,
      // how much to scroll with each mouse delta
      dragVelocity: 3.3,

      // use any custom easing function
      // compatible with most easing plugins
      easing: function (x, t, b, c, d) {
        return c*(t/=d)*t + b;
      },

      // event control
      scrollPropagate: false,
      eventPropagate: true,

      // Force centering slide after scroll event
      scrollLock: false,
      // how long to wait after scroll event before locking
      // if too low, it might interrupt normal scrolling
      scrollLockDelay: 150,

      // Force centering slide after resize event
      resizeLock: true,

      // Glider.js breakpoints are mobile-first
      responsive: [
        {
          breakpoint: 900,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 575,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    });
  }

  export default createNewGlider;
