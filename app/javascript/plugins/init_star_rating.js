import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";
// import "jquery-bar-rating/dist/themes/fontawesome-stars.css";


const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
    // theme: 'fontawesome-stars'
  });
};

export { initStarRating };
