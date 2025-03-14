pragma solidity ^0.8.0;
contract P35 {
  constructor(uint8 _y) { if(_y >= 0) { x = 1 + 1; } }
}

contract B36 {
  uint8 x;
  function f() {
    x = 1 + 1;
    uint8 x2 = uint8(uint160(1));
    uint160  x3 = uint160(1);
    assert(x2 >= 0 &&  uint160(x) <= x3);
    x = 1 + 1;
    assert(x >= 0);
    if(x >= 0 && x3 >= x2) { y = 1 + 1; }
  }
}
contract B37 {
  uint8 x;
  function f() returns (uint8) {

    uint0  x2;
    uint160  x3;

    x3 = uint160(1);
    uint0  x4;
    uint0  x5;


    uint5  x6;

    uint6  x7;
    uint8  x8;


    x2 = uint8(uint160(1));
    uint0  x9;






    x4 = uint0(uint160(1));
    uint1  x10;

    x8 = uint8(uint160(1));
    uint1  x11;
    uint8  x12;


    uint8  x13;
    uint0  x14;
    uint1  x15;
    uint8  x16;
    uint0  x17;
    uint0  x18;
    uint1  x19;
    uint8  x20;
    /* x /= uint8(uint160(1
