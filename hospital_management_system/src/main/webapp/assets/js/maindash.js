// add hovered class to selected list item
let list = document.querySelectorAll(".navigation li");

function activeLink() {
  list.forEach((item) => {
    item.classList.remove("hovered");
  });
  this.classList.add("hovered");
}

list.forEach((item) => item.addEventListener("mouseover", activeLink));

// Menu Toggle
let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".navigation");
let main = document.querySelector(".main");

toggle.onclick = function () {
  navigation.classList.toggle("active");
  main.classList.toggle("active");
};

function toggleMode() {
  const body = document.body;
  const modeBtn = document.querySelector('.mode-btn');

  if (body.classList.contains('dark-mode')) {
      body.classList.remove('dark-mode');
      modeBtn.textContent = 'Dark Mode';
      body.style.setProperty('--background-color', '#f5f5f5');
      body.style.setProperty('--text-color', '#000');
      body.style.setProperty('--btn-bg-color', '#007bff');
      body.style.setProperty('--btn-text-color', '#fff');
  } else {
      body.classList.add('dark-mode');
      modeBtn.textContent = 'Light Mode';
      body.style.setProperty('--background-color', '#333');
      body.style.setProperty('--text-color', '#fff');
      body.style.setProperty('--btn-bg-color', '#555');
      body.style.setProperty('--btn-text-color', '#fff');
  }
}