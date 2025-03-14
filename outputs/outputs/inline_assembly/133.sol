pragma solidity ^0.8.0;
struct Struct {
    bytes4 constant public _structType = 0x4D34E9E1;
}
library Class {
  function test() public pure returns (uint8) {
    return Struct._structType.value();
  }
}

contract E2G {
  Class.test();
}
