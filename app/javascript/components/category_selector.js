const categorySelector = () => {

  const place = document.querySelector(".category-tags");

  const categories = document.querySelectorAll(".category-tags a");

  if (place) {
    categories.forEach(category => {
      category.addEventListener('click', (event) => {
        category.classList.add('highlighted');
      });
    });
  };

};

export { categorySelector };
