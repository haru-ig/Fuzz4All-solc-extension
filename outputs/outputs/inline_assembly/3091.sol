pragma solidity ^0.8.0;
contract C {
  uint a;
  constructor(uint _a) public {
    a = uint(_a);
  }
  function modifyAdd() public {
    a += a;
  }
}
```
