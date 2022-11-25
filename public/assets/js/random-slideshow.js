let slideIndex = 0;
carousel();

function carousel()
{
    let i;
    let x = document.getElementsByClassName("random-carousel");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    console.log(x);
    slideIndex++;
    if (slideIndex > x.length) {
        slideIndex = 1
    }
    x[slideIndex - 1].style.display = "flex";
    setTimeout(carousel, 3000);
}
