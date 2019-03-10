// 1. Find the button we need to change
let button = document.getElementById('favourited-button')

// 2. Change the button's appearance and text
// button.addEventListener('click', (event) => {
if (button.className === "unfavourited") {
  button.className = "favourited";
  button.innerText = "Remove from favourites";
} else {
button.className = "unfavourited";
button.innerText = "Add to favourites";
};
// });

// <%= link_to "show replies", tweets_show_replies_path(:parent => tweet, active: false ), method: :post, remote: true, id: "tweet-#{tweet.id}-replies-link", class: "show-replies" %>

// $("#tweet-#{@parent.id}-replies-link").attr("href", "<%= tweets_show_replies_path(:parent => @parent, active: true) %>");

