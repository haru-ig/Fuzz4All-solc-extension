pragma solidity ^0.8.0;
contract emulator13 {
  uint x;
  function setx(uint _a) public returns(uint) { x = _a; return 0; }
  function test() public { uint i; for (uint j = 0; j < 100; j ++) { i = x; } }
}
```
