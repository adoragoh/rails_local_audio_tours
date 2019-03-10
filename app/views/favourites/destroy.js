// 1. Find the button we need to change
let destroyButton = document.getElementById('favourited-button')

// 2. Change the button's appearance and text
// button.addEventListener('click', (event) => {
if (destroyButton.className === "unfavourited") {
  destroyButton.className = "favourited";
  destroyButton.innerText = "Remove from favourites";
} else {
destroyButton.className = "unfavourited";
destroyButton.innerText = "Add to favourites";
};
// });
