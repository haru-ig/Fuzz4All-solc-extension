pragma solidity ^0.8.0;
contract E {
  uint8 public _number = 0;
  function incrementNumber() public returns (uint8 _) {
    _number = _number + 1;
    return _number;
  }
}
contract G {
  uint8 public _number = 0;
  function decrementNumber() public returns (uint8_) {
    _number = _number - 1;
    return _number;
  }
}
```
