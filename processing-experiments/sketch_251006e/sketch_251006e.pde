// draw grid lines

size(200,200); // canvas

int gridLineX = 10;
int gridLineY = 10;

while (gridLineX <= 200) {
  line(gridLineX, 0, gridLineX, 200);
  gridLineX = gridLineX + 10;
}

while (gridLineY <= 200) {
  line(0, gridLineY, 200, gridLineY);
  gridLineY = gridLineY + 10;
}
