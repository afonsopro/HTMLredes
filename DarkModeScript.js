const toggle = document.getElementById('Botao_DarkMode');
const body = document.querySelector('body');
const SobreTurma = document.getElementById('Titulo_SobreTurma');
const Evento1 = document.getElementById('Evento1');
const Evento2 = document.getElementById('Evento2');
const Evento3 = document.getElementById('Evento3');
const Evento4 = document.getElementById('Evento4');
const Evento5 = document.getElementById('Evento5');

toggle.addEventListener('click', function(){
    this.classList.toggle('bi-moon');
    if(this.classList.toggle('bi-brightness-high-fill')){
        body.style.background = 'white';
        body.style.color = 'black';
        SobreTurma.style.background = '#ebebeb';
        Evento1.style.color = 'black';
        Evento2.style.color = 'black';
        Evento3.style.color = 'black';
        Evento4.style.color = 'black';
        Evento5.style.color = 'black';
        body.style.transition = '.7s';
    }else{ 
        body.style.background = '#252524';
        body.style.color = 'white';
        SobreTurma.style.background = '#181818';
        Evento1.style.color = 'white';
        Evento2.style.color = 'white';
        Evento3.style.color = 'white';
        Evento4.style.color = 'white';
        Evento5.style.color = 'white';
        body.style.transition = '.7s';
    }
});
