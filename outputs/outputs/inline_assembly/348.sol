pragma solidity ^0.8.0;
contract F2{
    uint a;
    constructor() {
        a = 1;
    }
    function modify(uint x, uint y, uint z) public {
        a += x*(x + y) + z;
    }
    function divide(uint x, uint y, uint z) public {
        a *= x*(x + y) + z;
    }
}
contract F {
    function multiply(uint x, uint w) public constant returns (uint y) {
        for (uint i=0; i<x; i++) {
          y += (2 ** 256 -(2 ** 255-1)/x-1)*x*(2 ** 256 - x);
        }
    }
}
contract F4{
    constructor() {
        F f;
        f.multiply(5, 15);
    }
}
contract F5{
    uint x;
    uint y;
    bool b;
    constructor() {
        x = 5;
        y = 7;
        b = false;
    }
}
contract F6{
    uint x;
    uint y;
    constructor() {
        x = 5;
        y = 7;
    }
  function multiply(uint x, uint w) public returns (uint y) {
    for (uint i=0; i<x; i++) {
      y += (2 ** 256 -(2 ** 255-1)/x-1)*x*(2 ** 256 - x);
    }
  }
  function divide(uint x, uint w) public returns (uint y) {
    for (uint i=0; i<x; i++) {
      y += x*(2 ** 256 - x);
    }
  }
  function f(uint x, uint w) public {
    y += multiply(5, w);
    y += divide(5, w);
  }
}
contract F7{
    uint x;
    uint y;
    constructor() {
        x = 5;
        y = 7;
    }
  function s(uint x, uint w) public {
    if (w!= 0) {
      if (x == 5){
        w = 254;
      } else {
        w = (2 ** 256 - 2 ** 255 + 1);
      }
    }
    if (w!=0) {
      y = x * (2 ** 256 - x);
    }
  }
}
/* Please create a fully written program that calculates 3.141592653589
