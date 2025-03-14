pragma solidity ^0.8.0;
contract MutatedContract {
  uint x = 45;
  uint _y;
  constructor() public{
    x = _calculate();
    _y = 0;
  }
  function _calculate() public view returns (uint) {
    return 1;
  }
  function _modify() public {
    x = 100;
  }
}
```
