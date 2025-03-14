pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    constructor() public {
        i = uint8(0);
        x = uint8(0);
    }
    function test() public {
        i = uint8(128);
        x = uint8(128);
        x = i + x;
        x = i << 1;
        x = 10 * x + i;
    }
}
contract G {
  uint8 i;
  uint8 x;
  constructor() public {
    i = uint8(0);
    x = uint8(0);
  }
  function test() public {
    i = uint8(128);
    x = uint8(128);
    x = (i & x) > 0 ^ 1;
    x = (x - uint8(1));
    x = (int8(i) / int8(x + 1) < -100);
    x = 1 / i << 1;
    x = 10 * x + i;
  }
}
