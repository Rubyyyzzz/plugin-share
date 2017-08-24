/* The following mimics the starter shim */
var a = document.getElementById('c'),
    b = document.body,
    c = a.getContext('2d');

a.width = window.innerWidth;
a.height = window.innerHeight;

/* Minified */
f = [];
j = 200;
n = k = p = q = O = 0;
w = a.width;
h = a.height;
Z = {
    x: 0,
    y: 0
};
m = Math;
o = "globalCompositeOperation";
for (y in c) c[y[0] + y[1] + (y[6] || "")] = c[y];

function $(d, e) {
    d = d || -2;
    e = e || 2;
    return m.random() * (e - d) + d
}

function l() {
    requestAnimationFrame(l);
    c[o] = "source-over";
    c.sa();
    c.globalAlpha = .1;
    c.tra(w / 2, h / 2);
    c.sc(1.009, 1.009);
    c.ro(.007);
    c.tra(-w / 2, -h / 2);
    c.drawImage(a, 0, 0);
    c.ree();
    c.drawImage(a, 0, 0, w, h, $(), $(), w + $(), h + $());
    c[o] = "xor";
    c.fillStyle = "rgba(0,0,0,.01)";
    c.fic(0, 0, w, h);
    c[o] = "lighter";
    c.bea();
    for (i = 0; i < j; i++) z = f[i], z.x += z.vx = .2 * (z.l.x - z.x), z.y += z.vy = .2 * (z.l.y - z.y), 0 < i && c.li(z.x + $(-5, 5), z.y + $(-5, 5)), 0 == O % 2 && c.strokeRect($(0, w), $(0, h), .6, .6);
    c.strokeStyle = "hsla(" + $(k, k + 60) + ", " + $(60, 90) + "%," + $(10, 70) + "%," + $(.3, .5) + ")";
    c.st();
    O++
}
for (J = j; J--;) f[J] = {
    l: J == j - 1 ? Z : f[J + 1]
};

function R() {
    c[o] = "source-over";
    c.fillStyle = "#000";
    c.fic(0, 0, w, h);
    k = 90 * $();
    _ = $(40, 99);
    for (i = 0; i < j; i++) z = f[i], _ = 0 == n % 2 ? _ : $(100, 150), z.x = w / 2 + m.cos(i / j * m.PI * _) * i * 20, z.y = h / 2 + m.sin(i / j * m.PI * _) * i * 20;
    n++
}
b.onmousemove = function(d) {
    Z.x = d.pageX;
    Z.y = d.pageY
};
b.onclick = R;
R();
l()

/* Expanded */
/*
f = [],
j = 200,
n = k = p = q = O = 0,
w = a.width,
h = a.height,
Z ={x:0,y:0},
m = Math,
o = 'globalCompositeOperation';

for(y in c)
	c[y[0]+y[1]+(y[6]||'')]=c[y];

function $( a, b ) {
	a = a||-2;
	b = b||2
	return m.random() * ( b - a ) + a;
}

function l() {
	requestAnimationFrame( l );

	c[o] = 'source-over';


	c.sa();// c.save();
	c.globalAlpha = .1;
	c.tra( w / 2, h / 2 ); // c.translate();
	c.sc( 1.009, 1.009 ); // c.scale();
	c.ro( 0.007 ); // c.rotate
	c.tra( -w / 2, -h / 2 ); // c.translate();
	c.drawImage(a, 0, 0);
	c.ree(); // c.restore()
	c.drawImage(a,0,0,w,h,$(),$(),w+$(),h+$());

	c[o] = 'xor';
	c.fillStyle = 'rgba(0,0,0,.01)';
	c.fic( 0, 0, w, h ); // c.fillRect();

	c[o] = 'lighter';
	c.bea(); // c.beginPath();
	for(i=0;i<j;i++){
		z=f[i];
		z.x += z.vx = ( z.l.x - z.x ) * .2;
		z.y += z.vy = ( z.l.y - z.y ) * .2;
		i > 0 && c.li( z.x + $(-5,5), z.y + $( -5, 5 ) );
		O % 2 == 0 && c.strokeRect( $(0, w), $(0, h), .6, .6);
	}
	c.strokeStyle = 'hsla(' + $(k, k+60) + ', ' + $( 60, 90 ) + '%,' + $( 9, 70 ) + '%,'+$(.3, .5)+')';
	c.st(); // c.stroke();
	O++;
}

J=j;
while(J--){
	f[J] = {
		l: J == j-1 ? Z : f[ J + 1 ]
	}
}

function R() {
	c[o] = 'source-over';
	c.fillStyle = '#000';
	c.fic( 0, 0, w, h );
	
	k = $()*90;
	_ = $(40,99);
	for(i=0;i<j;i++){
		z=f[i];
		_ = n % 2 == 0 ? _ :$(100,150);
		z.x = w / 2 + m.cos( i / j * m.PI * _ ) * i * 20;
		z.y = h / 2 + m.sin( i / j * m.PI * _ ) * i * 20;
	}
	n++;
}

b.onmousemove = function( e ) {
	Z.x = e.pageX;
	Z.y = e.pageY;
};

b.onclick = R;

R();
l();*/