//week06-1 好玩的程式設計
//file-Preference 偏好設定,字型放大,連續上週的week05-5
int[][]b=new int[10][16];//Java的2D陣列
void setup() {
  size(800, 500);//視窗大小 800 x 500
}
void draw() {
  background(225);//背景白色
  for (int i=0; i<10; i++) {//左手 i 的for(迴圈)對應y座標
    for (int j=0; j<16; j++) {//右手j的for(迴圈)對應x座標
      if (b[i][j]==1)fill(#F5CBFF);//如果有陣列1,就放淡紫色
      else fill(255);//否則,就放白色
      rect(j*50, i*50, 50, 50);//小格子(右手j對應x座標,左手i對應y座標,寬,高)
    }
  }
}
void mousePressed() {
  int i = mouseY/50, j=mouseX/50;
//左手對應y座標,右手對應x座標
b[i][j]=1;//設成i,等一下會畫紫色

}
