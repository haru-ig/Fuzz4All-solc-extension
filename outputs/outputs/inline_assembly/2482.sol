pragma solidity ^0.8.0;
contract Comp1
{
    uint _a;
    constructor(uint _a) {
        _a=_a;
    }
    function setIncrease(uint _increase) public {
        _a++;
        _a++;
        _a++;
        _a++;
        _a++;
    }
    function setDecrease(uint _increase) public {
        _a--;
        _a--;
        _a--;
        _a--;
        _a--;
    }
}

pragma solidity ^0.8.0;
contract Comp1
{
    uint _a;
    uint _b;
    uint _c;
    uint _d;
    uint _e;
    uint _f;
    uint _g;
    uint _h;
    uint _i;
    uint _j;
    uint _k;
    uint _l;
    uint _m;
    uint _n;
    uint _o;
    uint _p;
    uint _q;
    uint _r;
    uint _s;
    uint _t;
    uint _u;
    uint _v;
    uint _w;
    uint _x;
    uint _y;
    uint _z;
    uint _1;
    uint _2;
    uint _3;
    uint _4;
    uint _5;
    Comp1 b = new Comp1(1);
    Comp1 c;
    constructor (uint _a, uint _b) {
       _a=1;
       for(uint i=0; i<3;++i){
           _b=_b+1;
       }
       b.setIncrease(5);
       b.setDecrease(3);
       for(uint i=2; i<100;i++) {
           b.setIncrease(b.setIncrease(101));
           b.setDecrease(b.setDecrease(33));
           if((i%2) == 0){
               _b--;
               if(_b >= b.getIncrease()){
                   _b=0;
               }
           }
       }
       if(b._a>100000) {
           if (_b >= 5) {
               _b=0;
           }
           else {
               _b--;
           }
       }
       b.setIncrease(5);
       c = b;
