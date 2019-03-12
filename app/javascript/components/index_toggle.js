const toggleIndex = () => {
  const buttonCards = document.querySelectorAll(".nav-item")[0];
  const buttonMap = document.querySelectorAll(".nav-item")[1];

  if (buttonMap && buttonCards) {
    buttonCards.addEventListener("click", (event) => {
      const cards = document.getElementById("1");
      cards.classList.add("active");
      const map = document.getElementById("2");
      map.classList.remove("active");
      buttonCards.classList.add("active");
      buttonMap.classList.remove("active");
    });

    buttonMap.addEventListener("click", (event) => {
      const map = document.getElementById("2");
      map.classList.add("active");
      const cards = document.getElementById("1");
      cards.classList.remove("active");
      buttonMap.classList.add("active");
      buttonCards.classList.remove("active");
    })
  };
};


export { toggleIndex };
