pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  bool f1;
  uint _x;
  function f() public {
    uint b = 0;
    _x = 0;
    b = 1;
    _x = 0xbeef;
    _x = 0;
    _x = 0xbeef;
    _x = 42;
    _x = 0xbeef;
    _x = 0;
    _x = 0xbeef;
    _x = _x + 2;
    _x = 0;
    _x = 0xbeef;
    _x = 0x4;
    _x = 1;
    _x++;
    _x = _x * 100;
    _x = _x * 10;
  }
}
