let nav_options = document.querySelectorAll('.nav-item');
nav_options.addEventListener('click', function (e,l) {
    l.classList.add('active');
    nav_options.forEach(() => {
        if (l !== this) {
            l.classList.remove('active');
        });
    });
});