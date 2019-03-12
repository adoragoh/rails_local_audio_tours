//WINSON: Can't figure out how to pass in the track latitudes and longitudes

const initZomato = () => {
  const zomato = document.querySelector("#zomato");
  const get_restaurants = () => {
    fetch(`https://developers.zomato.com/api/v2.1/geocode?lat=${zomato.dataset.destinationLat}&lon=${zomato.dataset.destinationLon}`,{
      headers: {"user-key": "c4c51742b4aa135809f4ccca9750afe5"}
    })
      .then(response => response.json())
      .then((data) => {
        let restaurants = data.nearby_restaurants;
        restaurants.forEach((restaurant)=>{
          console.log(restaurant.restaurant.name)
          console.log(restaurant.restaurant.url)
          console.log(restaurant.restaurant.location.latitude)
          console.log(restaurant.restaurant.location.longitude)
          console.log(restaurant.restaurant.cuisines)
          console.log(restaurant.restaurant.average_cost_for_two)
          console.log(restaurant.restaurant.price_range)
          // console.log(restaurant.restaurant.offers)
          console.log(restaurant.restaurant.user_rating.aggregate_rating)
          console.log(restaurant.restaurant.user_rating.rating_text)
          console.log(restaurant.restaurant.user_rating.rating_color)
          console.log(restaurant.restaurant.user_rating.votes)
          console.log(restaurant.restaurant.photos_url)
          console.log(restaurant.restaurant.featured_image)


          // const restaurant_modal = `<p> ${restaurant.restaurant.name}</p>`

          // INCLUDE THIS LATER!! (CSS not workinggg)
          const restaurant_modal = `
            <div class="col-12">
              <div class="card-product">
                <img src="${restaurant.restaurant.featured_image}">
                <div class="card-product-infos">
                  <h2>${restaurant.restaurant.name}</h2>
                  <p>${restaurant.restaurant.price_range}</p>
                  <p>${restaurant.restaurant.cuisines}</p>
                  <p>${restaurant.restaurant.average_cost_for_two}</p>
                  <p>Rating: ${restaurant.restaurant.user_rating.aggregate_rating}</p>
                </div>
              </div>
            </div>`;



          zomato.insertAdjacentHTML("beforeend", restaurant_modal);
        });
      })
    }
    get_restaurants()
}
//   );
// }



export { initZomato}
