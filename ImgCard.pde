class ImgCard extends Card {
  PImage playImg;
  ImgCard(int x, int y, int cSize, PImage img, int fixedId) {
    super(x, y, cSize, fixedId);
    playImg = img;
  }
  void addToBackground() {
    back.beginDraw();
    back.image(playImg, xpos, ypos, cardSize, cardSize);
    back.endDraw();
  }

  void setIsSelected(boolean is) {
    if (is) {
      stopRobot = false;
    }
  }
}
