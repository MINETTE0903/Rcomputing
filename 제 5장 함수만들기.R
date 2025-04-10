#제5장
#함수의 생성
#예제5-1
u<-1
v<-8
g<-function(x) {
  x<-x+1
  u<-u+x
  return(u)
}
g(v)
u
v

