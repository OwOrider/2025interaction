//week09_1 part3
color [] c = {#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63};
color [] c2 = { #776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};

int [] N = {0,2,4,8,16,32,64};
int [] [] B = {{0,0,0,0},{1,2,3,4},{5,0,0,0},{0,0,0,0}};
void keyPressed()
{
  if(keyCode==RIGHT)
  {
    for(int i=0;i<4;i++)
    {
      int now = 3;
      for(int j=3;j>=0;j--)
      {
        if(B[i][j]>0)
        {
          B[i][now] = B[i][j];
          if(now<3)
          {
            while(now>0 && B[i][now-1]==B[i][now])
            {
              B[i][now-1]++;
              now--;
            }
          }
          now++;
        }
      }
      for(int j=now ;j<4;j++)
      {
        B[i][j] = 0;
      }
    }
  }else if(keyCode==UP){
  }else if(keyCode==DOWN){
    for(int j=0;j<4;j++)
    {
      int now = 3;
      for(int i=3;i>=0;i--)
      {
        if(B[i][j]>0)
        {
          B[now][j] = B[i][j];
          while(now<3 && B[now+1][j]==B[now][j])
          {
            B[now+1][j]++;
            now++;
          }
          now--;
        }
      }
      for(int i=now;i>=0;i--)
      {
        B[i][j] = 0;
      }
    }
  }
  genTwo();
}

void genTwo()
{
  int zero = 0;
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<4;j++)
    {
      if(B[i][j]==0)zero++;
    }
  }
  int ans = int(random(zero));
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<4;j++)
    {
      if(B[i][j]==0)zero++;
      {
        if(ans==0)
        {
          B[i][j] = 1;
          return;
        }else ans--;
      }
    }
  }
}

void setup()
{
  size(410,410);
}
void draw()
{
  background(188,174,162);
  {
    for(int i=0;i<4;i++)
    {
      for(int j=0;j<4;j++)
      {
        int id = B[i][j];
        fill(c[id]);
        noStroke();
        rect(j*100+10,i*100+10,90,90,5  );
        textAlign(CENTER,CENTER);
        textSize(60);
        text(N[i],j*100+55,i*100+55);
      }
    }    
  }
}
