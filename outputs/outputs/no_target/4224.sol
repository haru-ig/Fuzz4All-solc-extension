pragma solidity ^0.8.0;
contract P13 {
  address payable a;
  function f() public {
    a.transfer(a);
    }
}

contract P14 {
  function i(uint x) pure public returns (uint) {
    require(x<2048, "test");
    return x;
  }
}

contract P15 {
  uint x;
  function s() pure public returns (uint) {
    x >= 10 && x <= 10 ** 8;
    x >= 0 && x <= (10 ** 8);
    x >= 0 && x <= 0 ** 256;
    x >= 10 && x <= (10 ** 8) / 10;

    x > 100;
    x <= 100;
    x <= 50;
    x >= 50;
    uint y = uint(uint8(0));
    if (y == 5) return 5;
    if (y >= 50) return 50;
    x == 100000;
    return x * 10;
  }
}

contract P16 {
  uint x;
  function s() pure public returns (uint) {
    x * 10;
    x + x;
    x - 1;
    x > 100;
    return 11;
  }
}

contract P17 {
  function f(uint f, uint x, uint y) public {
    x += y;
    x++;
    x--;
    x *= 4;
    uint z = 2 * x + 1;
    uint p = 10;
    uint q = 10 ** p;
    uint w = 10 / 2;
    uint u = 10 % 2;
    uint t = 10 && 10;
    uint v = 10 || 10;
    uint d = 1 - 10;
    uint y = - 0x800;
    uint x = "10e100";

    uint x = 10;
    uint x = 0x1b000000000000000000;
    uint x = 0x8100
