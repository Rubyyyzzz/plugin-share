/**
 * Created by Pierre on 09/11/2014.
 * Note : Branches actually represents roots and vice versa.
 *
 * Please notify me if you are planning to use my work, feel free to contact me for anything else.
 * pjoy.fr | portejoiepierre@gmail.com
 */

var DYNAMICVALUES = true;
//tree
var tree_resistance,
    recursive_order,
    tree_height,
    root_length,
    branch_number = 5,
    leaf_factor = 3,
    root_angle = 16;
//wind
var wind_force,
    wind_angle,
    max_ran_wind_x = 30,
    max_ran_wind_y = 30;
//structure
var canvas,
    ctx,
    tree,
    wind,
    boundx,
    boundy;

window.requestAnimFrame =
    window.requestAnimationFrame ||
    window.webkitRequestAnimationFrame ||
    window.mozRequestAnimationFrame ||
    window.oRequestAnimationFrame ||
    window.msRequestAnimationFrame ||
    function(callback) {
        window.setTimeout(callback, 1000 / 60);
    };

var Point = function(x, y, l) {
    this.origX = x;
    this.origY = y;
    this.x = x;
    this.y = y;
    this.l = l;
    this.isBranch = 0;
    this.linkedPoints = [];
    this.linkLength = [];
};

Point.prototype.lineColor = function() {
    if (this.isBranch) return "#79F8F8";
    if (this.l == recursive_order) return "#79F8F8";
    if (this.l == 0) return "#FFFF00";
    if (this.l == 1) return "#FF4455";
    if (this.l == 4) return "#76F8F8";
};

Point.prototype.draw = function() {
    var i = this.linkedPoints.length;
    while (i--) {
        if (this.isBranch) ctx.arc(this.x, this.y, 4 * this.l + 4, 0, Math.PI * 2);
        else ctx.arc(this.x, this.y, 2 * this.l + leaf_factor, 0, Math.PI * 2);
        ctx.moveTo(this.x, this.y);
        ctx.lineTo(this.linkedPoints[i].x, this.linkedPoints[i].y);
        ctx.lineWidth = this.linkedPoints[0].l / 2;
        ctx.strokeStyle = this.lineColor();
    }
};

Point.prototype.applyForce = function(v, a) {
    // for the forces applied to to point, I considered the branch as a torsion spring, applying a force of magnitude k*(teta-teta0)
    // the wind applies a force of magnitude v with a reference angle a (in canvas coordinates)
    var alpha, beta;
    var r;
    var f = 1;
    var l = 1;

    //angle between the segment linking the point to its attach point and the canvas abscissa
    alpha = Math.atan(((this.y - this.linkedPoints[0].y) / (this.x - this.linkedPoints[0].x)));
    //angle between the segment linking the original point (at t0) to its attach point and the canvas abscissa
    beta = Math.atan(this.origY / this.origX);

    if (this.x < this.linkedPoints[0].x) {
        l = -l;
        f = -1;
    }
    l *= this.linkLength[0];
    f *= Math.cos(alpha - a) * v;

    if (this.origX == 0) {
        if ((this.x - this.linkedPoints[0].x) < 0) {
            alpha -= Math.PI;
            l = -l;
        }
    } else if ((this.origX) / (Math.abs(this.origX)) != ((this.x - this.linkedPoints[0].x) / Math.abs(this.x - this.linkedPoints[0].x))) {
        if ((this.origX) / (Math.abs(this.origX)) == 1) {
            if ((this.origY) / (Math.abs(this.origY)) == 1) {
                alpha += Math.PI;
                l = -l;
            } else {
                alpha -= Math.PI;
                l = -l;
            }
        } else {
            if ((this.origY) / (Math.abs(this.origY)) == 1) {
                alpha -= Math.PI;
                l = -l;
            } else {
                alpha += Math.PI;
                l = -l;
            }
        }
    }
    r = -(alpha - beta) * (this.l + 1) * 0.01 * tree_resistance;

    //sum of the forces. f : wind force resulting angle, r : branch reaction resulting angle
    this.x = this.linkedPoints[0].x + Math.cos(alpha + f + r) * l;
    this.y = this.linkedPoints[0].y + Math.sin(alpha + f + r) * l;
};

var Structure = function() {
    this.points = [];

    var start_x = boundx / 2;
    var start_y = boundy / 1.75;
    var start_y2 = boundy / 1.75 - root_length / 3;
    var p = new Point(start_x, start_y, 7);
    var p2 = new Point(start_x, start_y2, 5);

    this.points.push(p);
    p2.linkedPoints.push(p);
    this.points.push(p2);

    this.recursiveRoot(start_x, start_y2, 270, root_length, recursive_order, this);
    this.recursiveBranch(start_x, start_y, 'y', tree_height, 2, this);
};

Structure.prototype.recursiveRoot = function self(x, y, a, l, r, struct) {
    l = l / 1.75;
    var maxAngle = 90;
    var b = a;
    var i = 0;
    while (maxAngle > 0) {
        i++;
        maxAngle -= root_angle;
        if (maxAngle > 0) b -= root_angle;
    }
    //number of branches
    var iMax = i * 2 - 1;

    for (i = 0; i < iMax; i++) {
        var newl = l / 2;
        if (i % 2 == 0) newl = 0.9 * l;
        if (i == (iMax - 1) / 2 || i == iMax / 2) newl = l * 1.1;

        newx = x + (newl) * Math.cos(b / 180 * Math.PI);
        newy = y + (newl) * Math.sin(b / 180 * Math.PI);

        var p = new Point(newx, newy, r);

        if (r == recursive_order) p.linkedPoints.push(struct.points[1]);
        else if (r == 0) p.linkedPoints.push(struct.points[struct.points.length - 1 - i]);
        else {
            var linkedIndex = i * Math.round(Math.pow(iMax, r) * (1 - (1) / (1 - (iMax))) + (1) / (1 - (iMax)));
            p.linkedPoints.push(struct.points[struct.points.length - 1 - linkedIndex]);
        }

        var length = Math.sqrt(Math.pow(p.linkedPoints[0].y - p.y, 2) + Math.pow(p.linkedPoints[0].x - p.x, 2));

        p.linkLength.push(length);
        p.origX = p.x - p.linkedPoints[0].x;
        p.origY = p.y - p.linkedPoints[0].y;

        struct.points.push(p);
        if (r > 0) self(newx, newy, b, newl, r - 1, struct);
        maxAngle += root_angle;
        if (maxAngle < 180) b += root_angle;
    }
};

Structure.prototype.recursiveBranch = function self(x, y, d, l, r, struct) {
    for (var i = 1; i < branch_number + 2; i++) {
        var newx = x;
        var newy = y;
        var newd;
        if (d == 'x') {
            l = l * 1.05;
            newx = x + (i / (branch_number + 1)) * l;
            newd = 'y';
        } else {
            l = l * 0.95;
            newy = y + (i / (branch_number + 1)) * l;
            newd = 'x';
        }
        var p = new Point(newx, newy, r);
        p.isBranch = 1;

        if (i == 1) {
            if (r == 2) {
                p.linkedPoints.push(struct.points[0])
            } else p.linkedPoints.push(struct.points[struct.points.length - 1])
        } else if (r == 0) {
            p.linkedPoints.push(struct.points[struct.points.length - 1])
        } else {
            var linkedIndex = Math.pow(branch_number, r - 1) * (branch_number + 1 - (branch_number + 1) / (1 - branch_number)) + (branch_number + 1) / (1 - branch_number);
            p.linkedPoints.push(struct.points[struct.points.length - 1 - (linkedIndex)]); //-1 ?
        }
        struct.points.push(p);

        if (r > 0) {
            var direction = 1;
            if (i % 2 == 0) direction = -1;
            if (i > 0 && i < branch_number + 1) self(newx, newy, newd, direction * l * ((i)) / (branch_number + 1), r - 1, struct);
        }
    }
};

Structure.prototype.draw = function() {
    var i = this.points.length;
    while (i--) {
        ctx.beginPath();
        this.points[i].draw();
        ctx.stroke();
    }
};

Structure.prototype.applyForces = function() {
    for (var i = 1; i < this.points.length; i++) {
        if (this.points[i].l < 4) {
            if (!this.points[i].isBranch) this.points[i].applyForce(wind_force, wind_angle * Math.PI / 180);
        }
    }
};

var RandomWind = function() {
    this.increment = 0;
    this.step = 0;
    this.sign = 1;
    this.ran_value = 1;
    this.max = 0;

    this.angle = 0;
    this.force = 0;
};

RandomWind.prototype.getRandom = function() {
    this.increment++;
    this.ran_value += this.step * this.sign;
    if (Math.abs(this.ran_value) > this.max || Math.abs(this.ran_value) > max_ran_wind_y) {
        //this.ran_value = this.max*this.sign;
        if (this.sign == 1) this.sign = -1;
        else this.sign = 1;

        this.max = (Math.random() + 0.1) * max_ran_wind_y;
        this.step = max_ran_wind_y / ((Math.random() + 0.3) * max_ran_wind_x);
        this.ran_value += this.step * this.sign;
    }
    this.force = (0.01 + 0.01 * Math.cos(this.increment * 0.01)) * 2;
    this.angle = wind.ran_value + 90;
};

function start() {
    canvas.width = window.innerWidth * 0.8;
    canvas.height = window.innerHeight * 0.99 - 60;
    boundx = canvas.width;
    boundy = canvas.height;

    if (DYNAMICVALUES) {
        root_length = window.innerHeight * 0.25;
        tree_height = window.innerHeight * 0.5;

        if (root_angle > 60) recursive_order = 5;
        else if (root_angle > 45) recursive_order = 4;
        else if (root_angle > 30) recursive_order = 3;
        else if (root_angle > 15) recursive_order = 2;
        else if (root_angle > 4) recursive_order = 1;
        else recursive_order = 0;
    }

    ctx.clearRect(0, 0, canvas.width, canvas.height);

    wind = new RandomWind();
    tree = new Structure();
    tree.draw();
}

function restart() {
    start()
}

function generateTree() {
    leaf_factor = Math.random() * 3;
    root_angle = Math.floor(Math.random() * 68) + 3;
    resetParameters();
    restart();
}

function resetParameters() {
    document.getElementById('wind force').value = 10;
    document.getElementById('tree resistance').value = 5;
}

function updateConditions() {
    if (DYNAMICVALUES) {
        wind.getRandom();
        wind_force = wind.force + 0.001 * parseInt(document.getElementById('wind force').value);
        tree_resistance = parseInt(document.getElementById('tree resistance').value);
        wind_angle = wind.angle;
    }
}

function update() {
    updateConditions();

    ctx.clearRect(0, 0, canvas.width, canvas.height);
    tree.applyForces();
    tree.draw();
    requestAnimFrame(update);
}

window.onload = function() {
    canvas = document.getElementById('c2');
    ctx = canvas.getContext('2d');
    start();
    update();
};

window.onresize = function() {
    restart()
};