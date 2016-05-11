///Draw text outline(texto contornado)

var xx     = argument0;
var yy     = argument1;
var text   = argument2;
var tcolor = argument3;
var ocolor = argument4;
var w      = argument5;

draw_set_color(ocolor);

draw_text(xx-w,yy,text);
draw_text(xx+w,yy,text);
draw_text(xx,yy-w,text);
draw_text(xx,yy+w,text);

draw_set_color(tcolor);

draw_text(xx,yy,text);
