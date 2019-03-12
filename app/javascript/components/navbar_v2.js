const sidebarButton = document.querySelector('#sidebarCollapse');
if (sidebarButton) {
  sidebarButton.addEventListener("click", (event) => {
    const sidebar = document.querySelector('#sidebar');
    sidebar.classList.toggle('active');
  })
}


const dimissButton = document.querySelector('#dismiss');
if (dimissButton) {
  dimissButton.addEventListener("click", (event) => {
    const sidebar = document.querySelector('#sidebar')
    sidebar.classList.toggle('active');
  })
}




// TODO: Change to Javascript
