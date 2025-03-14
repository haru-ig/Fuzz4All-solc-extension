pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0xb000;
  modifier onlyEven () {
    if (x % 2 == 0) {
    x = x * 0x400000000000000000000;
    }
    _;
  }
  function f() public onlyEven {
    x = x << 32 >> 32;
  }
}
