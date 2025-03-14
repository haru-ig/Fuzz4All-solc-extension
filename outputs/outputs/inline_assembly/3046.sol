pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  function M() public {
    a=0x10;
    a+=b;
    assert(a==0x20);
  }
}
```
