const categorySelector = () => {

  const place = document.getElementById("category-display");
  const cards = document.getElementById("category-display-cards");

  const category_array = document.querySelectorAll(".category-tags button");

  if (place){
    category_array.forEach(category => {
      category.addEventListener("click", (event) => {
        cards.remove();
        place.insertAdjacentHTML("afterbegin",
        `<div id="category-display-cards">
          <% @tours.where(category: category).each do |tour| %>
            <%= render 'shared/card_v2', tour: tour %>
          <% end %>
        </div>`);
      });
    });
  };

};

export { categorySelector }
