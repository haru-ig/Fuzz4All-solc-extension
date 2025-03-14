pragma solidity ^0.8.0;
contract E9H {
  uint16 x = 0xabcd;
  function f() public {
    uint256 x;
    x = 31000;
    x++;
    x = x - 0xbbbb;
    x = 31000;
  }
}
contract E12H {
  uint16 x = 0xabcd;
  function f() public {
    uint256 x;
    x = 3 + 1;
    x = 2 * x + 5 * x / 4;
  }
}
contract E15H {
  uint16 x;
  function f() public {
    uint256 x;
    x = 1 + 3;
    x *= x + x;
    x *= x / 2;
    x *= x;
    x *= x * x + 0x12315;
  }
}
contract E18H {
  uint w;
  uint x;
  function f() public {
    uint p;
    p++;
    p--;
    p--;
    p = p - 1;
    p = 3 * p + p;
    x = 1 + x + 1;
    x = p + p;
    x = x + 1;
    w = p - p * p;
    w = 3 + 1;
  }
}
contract E21H {
  assembly {
    w := 3 + 4;
    let x := 1;
    let y := x;
    x := y;
  }
}
contract E24H {
  assembly {
    let y := 10000;
    let x := x;
    x := y + y;
  }
}
