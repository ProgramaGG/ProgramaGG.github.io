const time = document.getElementById('time');
const date = document.getElementById('date');

const monthNames = ["de Enero", "de Febrero", "de Marzo", "de Abril", "de Mayo", "de Junio",
    "de Julio", "de Agosto", "de Septiembre,", "de Octubre,", "de Noviembre, ", "de Diciembre,"
];

const interval = setInterval(() => {

    const local = new Date();
    
    let day = local.getDate(),
        month = local.getMonth(),
        year = local.getFullYear();

    time.innerHTML = local.toLocaleTimeString();
    date.innerHTML = `${day} ${monthNames[month]} ${year}`;

}, 1000);