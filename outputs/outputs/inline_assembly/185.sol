pragma solidity ^0.8.0;
contract E7H {
  uint16 x;
  uint16 public x2;
  uint16 public x3;

  function g() public {
    x = 65;
    x = 82;
    x = 94;
    x = 65;
    x = 5;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 71;
    x = 65;
    x = 99;
    x = 65;
    x = 0xabcd;
    g1();
    g2(x);
    g3(x);
  }

  function g1() private {
    x = 82;
    x = 94;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
    x = 65;
  }

  function g2(uint16 f) private {
    x = f;
  }

  function g3(uint16 f) public view {
    g2(f);
    g2(0xabcd);
  }
}
