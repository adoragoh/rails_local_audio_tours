//WINSON: Can't figure out how to pass in the track latitudes and longitudes

const initZomato = () => {
  const zomato = document.querySelector("#zomato");
  const get_restaurants = () => {
    fetch(`https://developers.zomato.com/api/v2.1/geocode?lat=-37&lon=140`,{
      headers: {"user-key": "c4c51742b4aa135809f4ccca9750afe5"}
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        let restaurants = data.nearby_restaurants;
        restaurants.forEach((restaurant)=>{
          console.log(restaurant.restaurant.name)
          console.log(restaurant.restaurant.url)
          console.log(restaurant.restaurant.location.latitude)
          console.log(restaurant.restaurant.location.longitude)
          console.log(restaurant.restaurant.location.longitude)
          console.log(restaurant.restaurant.cuisines)
          console.log(restaurant.restaurant.average_cost_for_two)
          console.log(restaurant.restaurant.price_range)
          console.log(restaurant.restaurant.offers)
          console.log(restaurant.restaurant.user_rating.aggregate_rating)
          console.log(restaurant.restaurant.user_rating.rating_text)
          console.log(restaurant.restaurant.user_rating.rating_color)
          console.log(restaurant.restaurant.user_rating.votes)
          console.log(restaurant.restaurant.photos_url)
          console.log(restaurant.restaurant.featured_image)


          const restaurant_modal = `<p> ${restaurant.restaurant.name}</p>`

          // INCLUDE THIS LATER!! (CSS not workinggg)
          // const restaurant_modal = `
          // <div class="card mb-3" style="margin:20px;">
          //   <img class="card-img-top" id="image-top" src="${restaurant.restaurant.featured_image}"  alt="Restaurant near you">
          //   <div class="card-body">
          //     <h3 class="card-title">${restaurant.restaurant.name}</h3>
          //     <p class="card-text">${restaurant.restaurant.location}</p>
          //     <p class="card-text">${restaurant.restaurant.price_range}</p>
          //     <p class="card-text"><small class="text-muted">${restaurant.restaurant.cuisines}</small></p>
          //     <%= link_to(tour_path(tour)) do   %>
          //       <span class="full-link"></span>
          //     <%end%>
          //   </div>
          // </div>`;

          zomato.insertAdjacentHTML("beforeend", restaurant_modal);
        });
      })
    }
    get_restaurants()
}
//   );
// }



export { initZomato}
