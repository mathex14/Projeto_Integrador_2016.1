x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
amount = argument4 / 100;
bgCol = argument5;
minCol = argument6;
maxCol = argument7;
dirBar = argument8;
showBack = argument9;
showBord = argument10;

///Background healthbar

if showBack == true
{
    draw_set_color(bgCol);
    draw_rectangle(x1, y1, x2, y2, false);
}

// Draw Health
if amount > 1 
{
    draw_set_color(maxCol);
    draw_rectangle(x1, y1, x2, y2, false);
}
if amount > 1 
{
    draw_set_color(maxCol);
    draw_rectangle(x1, y1, x2, y2, false);
}
else if amount <= 1 && amount > 0 
{
    draw_set_color(merge_color(minCol,maxCol,amount));

    if (dirBar == 0)
    {
        draw_rectangle(x1, y1, x1 + ((x2-x1)*amount), y2, false);
    } 
    else if (dirBar == 1)
    { 
        draw_rectangle(x2, y1, x2 - ((x2-x1)*amount), y2, false);
    } 
    else if (dirBar == 2)
    {
        draw_rectangle(x1, y1, x2, y1 + ((y2-y1)*amount), false);
    } 
    else if (dirBar == 3)
    {
        draw_rectangle(x1, y2, x2, y2 - ((y2-y1)*amount), false);

    }
}

///H outline
if showBord == true
{
    draw_set_color(c_black);
    draw_rectangle(x1, y1, x2, y2, false);
}