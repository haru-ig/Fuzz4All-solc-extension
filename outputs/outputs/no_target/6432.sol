pragma solidity ^0.8.0;

contract modifiedB3 {
     function f() public {
        if (uint(true)>0) {
          uint64 a=uint(true);
          uint64 b=uint64(-1);
          uint64 c=-uint64(-1);
          uint64 d=b+uint64(-1*a);
          uint64 e=a-uint64(-1*b);
          uint64 f=c+b;
          uint64 g=a+b;
          uint64 h=a;
          uint64 i=uint64(a);
          uint64 j=uint64(-0);
          uint64 k=uint64(0);
          uint64 l=uint64(1);
          uint64 m=-uint64(1);
          uint64 n=uint64(1);
          uint64 o=a - uint64(uint160(h));
          uint64 p=b + uint64(uint160(i));
          uint64 q=b - uint64(uint160(j));
          uint64 r=unsignedShiftRight(x,uint160(a));
          uint64 s=unsignedShiftLeft(x,uint160(uint160(-1)));
        }
      }

    function unsignedShiftRight(uint64 x, uint64 y) private pure returns (uint64 r) {
        require(x<y,"overflow");
        if (y>x/y){
            return x / y * (10**9 * 8);
        } else if (x==0 || y==0){
            return 0;
        }
        r=y**(x-1);
        if (((x/y)>>y)!= uint64(x/(y*(10**9)))) {
           return 0;
        }
        return r;
    }

     function unsignedShiftLeft(uint64 x, uint64 y) private pure returns (uint64 r) {
        require(x>=0 && y>=0,"overflow");
        if (x==0 || y==0){
            return 0;
        }
        uint64 carry=uint64(x);
        r=y;
        uint64 carry2=uint64(x)/(y*2);
        uint64 carry3=uint64(x)/(y*3);
        uint64 carry4=uint64(x)/(y*4);
        uint64 carry5=uint64(x)/(y*5);
        uint64 borrow1 = ((carry - (x/y) - (10**(9+y)) )/0x7FFFFFFFFFFFFF - (10**(10+y-1))) * 0x7FFFFFFFFFFFFF;
        uint64 borrow2 = ((carry2 - ((x/(
