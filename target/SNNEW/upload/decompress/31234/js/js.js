/*
 * add mousewheel support
 */

var canvas = document.getElementsByTagName('canvas')[0];
var ctx = canvas.getContext('2d');

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;
canvas.style.background = '#222';

var dot = {
    size: 20,
    color: 'white'
};
dot.distX = dot.size * 4;
dot.distY = Math.sqrt(dot.size * dot.size * 16 - (dot.size * dot.size * 4));

var dots = [];

var mouse = {
    posX: canvas.width / 2,
    posY: canvas.height / 2
};





function initialize() {
    for (var i = 0; i < canvas.width + dot.size * 4; i += dot.distX) {
        for (var j = 0, a = 0; j < canvas.height + dot.size * 4; j += dot.distY, a++) {
            dots.push({
                posX: (a % 2 === 0) ? i : i + dot.distX / 2,
                posY: j
            });
        }
    }
}



function render() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    for (var i = 0; i < dots.length; i++) {
        var dist = Math.sqrt(Math.pow(mouse.posX - dots[i].posX, 2) + Math.pow(mouse.posY - dots[i].posY, 2));
        var size = dist / canvas.height * dot.size * 3;

        ctx.beginPath();
        ctx.arc(dots[i].posX, dots[i].posY, size, 0, 2 * Math.PI);
        ctx.fillStyle = dot.color;
        ctx.fill();
    }
}



document.onmousemove = function(ev) {
    mouse.posX = ev.pageX - canvas.offsetLeft;
    mouse.posY = ev.pageY - canvas.offsetTop;

    console.log(mouse);

    if (window.requestAnimationFrame) {
        requestAnimationFrame(render);
    } else {
        render();
    }
};



initialize();
render();