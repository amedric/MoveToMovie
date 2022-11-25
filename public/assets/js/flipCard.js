const card = document.querySelectorAll(".card__inner");

for (let i = 0; i < card.length; i++) {
    card[i].addEventListener('click', function () {
        card[i].classList.toggle('is-flipped');
    });
}

const back = document.querySelectorAll(".back-bttn");

for (let i = 0; i < back.length; i++) {
    back[i].addEventListener('click', function () {
        back[i].classList.toggle('is-flipped');
    });
}