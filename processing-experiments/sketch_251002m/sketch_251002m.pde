size(400,300);

float x = 200;
float y = 100;
float size = 40;

ellipse(x, y, size, size);
line(x, y + (size * 0.5), x, y + (size * 3));
point(x, (y + size) / 2);
line(x - (size * 1.5), y + (size * 1.5), x + (size * 1.5), y + (size * 1.5));
line(x + (size * 0.01), y + (size * 2.98), x + (size * 0.6), y + (size * 4));
line(x + (size * 0.01), y + (size * 2.98), x - (size * 0.6), y + (size * 4));
