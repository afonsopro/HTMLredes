const toggle = document.getElementById('Botao_DarkMode');
const body = document.querySelector('body');

toggle.addEventListener('click', function(){
    this.classList.toggle('bi-moon');
    if(this.classList.toggle('bi-brightness-high-fill')){
        body.style.background = 'white';
        body.style.color = 'black';
        body.style.transition = '.7s';
    }else{
        body.style.background = '#252524';
        body.style.color = 'white';
        body.style.transition = '.7s';
    }
});
