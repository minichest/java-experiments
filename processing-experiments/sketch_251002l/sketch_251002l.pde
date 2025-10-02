float x = 20;
float y = 15;
float edge = y - x;

line(x, y, 50, y); // top left -> top right
line(50, y, 50, 50); // top right -> bottom right
line(50, 50, x, 50); // bottom right -> bottom left
line(x, 50, x, y); // bottom left -> top keft
