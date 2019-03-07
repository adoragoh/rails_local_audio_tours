
var newReview = '<p><%= @review.content %></p>'


var reviews = document.querySelector('.reviews')

reviews.insertAdjacentHTML('beforeend', newReview)

var inputBox = document.querySelector('review_content')
inputBox.value = ""


  // <div class="container-reviews">
  //   <div class="row">
  //     <div class="col-xs-12 col-sm-6 col-sm-offset-3" id="review">
  //       <h3>Reviews</h3>

  //       <h5><strong><%= pluralize @tour.reviews.size, "review" %></strong></h5>

  //       <div class="reviews">
  //         <% if @tour.reviews.blank? %>
  //           <p style="font-size: 9px;">Be the first to leave a review for <%= @tour.title %></p>
  //         <% else %>
  //           <% @tour.reviews.each do |review| %>
  //           <p style="font-size: 16px"><%= review.content%></p>
  //           <hr style="margin-top: 5px; margin-bottom: 5px;">
  //           <% end %>

  //         <% end %>
  //       </div>
  //       <%= render 'reviews/form', restaurant: @restaurant, review: @review %>
  //     </div>
  //   </div>
  // </div>
