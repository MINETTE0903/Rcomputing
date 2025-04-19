#제5장
#함수의 생성
#예제5-1

## 전역변수는 함수 안에서 쓰이더라도, 밖에서 지정한 것 그대로 가는 것을 보여줌
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


#예제5-2
##함수 생성방법1
d.mean<-function(data){
  sum<-0
  
  sum(data)/length(data)
}
x<-rnorm(100, mean=3, sd=1.5)
d.mean(x)
x<-rnorm(10000, mean=3, sd=1.5)
d.mean(x) #n수가 많아질수록 평균에 가까워짐
x<-rnorm(100000, mean=3, sd=1.5)
d.mean(x)

#예제5-3
##함수 생성방법2 fix()사용

fix(d.var)
d.var(x)
(d.var(x))^0.5

#예제 5-5
f1<-function(x,y) {
  return(x+y)
}
f2<-function(x,y) {return(x-y)}
f1(1,2)
f<-f1
f(1,2)
f2(1,2)
f<-f2
f2(1,2)

#예제 5-6 함수를 매개변수로 받는 함수
g<-function(h,x,y) {h(x,y)}
g(f1,1,2)
g(f2,1,2)

#예제 5-7
f0<-function() {
  x<-c(1,2,3,4)
  y<-c(4,3,2,1)
  z<-x-y
  print(z)
}
f0() #매개변수 없이 결과값 출력
f0(1) #오류

#예제5-8~5-9 #매개변수에 기본값 주기
f_default<-function(data, num=1) {
  d.min<-min(data)
  d.max<-max(data)
  switch (num, mean(data), var(data), c(d.min, d.max))
}

x<-rnorm(1000, mean=5, sd=2)
f_default(x, 1)
f_default(x, 2)
f_default(x, 3)
f_default(x)

#예제5-10
is.function(f_default)

#예제5-11
args(f_default)

args(mean)
args(log)

#예제5-13
attributes(mean)
attributes(f_default)



