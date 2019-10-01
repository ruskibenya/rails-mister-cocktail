import "bootstrap";
import { initStarRating } from '../plugins/init_star_rating';
import rangeSlider from 'ion-rangeslider'
import "ion-rangeslider/css/ion.rangeSlider.min.css"

const diff = document.getElementById("cocktail_difficulty");
const prep = document.getElementById("cocktail_prep_time");

$(".js-range-slider-diff").ionRangeSlider( {
  min: 0,
  max: 2,
  from: 1,

  skin: "round",
  onChange: function (data) {
            // Called every time handle position is changed
            // console.log(data);
            diff.value = data.from;
            // console.log(minAge.value)
            // maxAge.value = data.to;

            // console.log(data.to);
    }
});

$(".js-range-slider-prep").ionRangeSlider( {
  min: 0,
  max: 2,
  from: 1,
  skin: "round",
  onChange: function (data) {
            // Called every time handle position is changed
            // console.log(data);
            prep.value = data.from;
            // console.log(minAge.value)
            // maxAge.value = data.to;

            // console.log(data.to);
    }
});

initStarRating();
