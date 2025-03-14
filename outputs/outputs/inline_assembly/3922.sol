pragma solidity ^0.8.0;
contract Mutant19 {
  bool private _isMutant;
  constructor() {
   _isMutant = true;
  }
  function setMutant() public {
    _isMutant = true;
  }
  function removeMutant() public {
    _isMutant = false;
  }
  function mutate() public {
    if (_isMutant) {
      uint x = 2;
      uint y = 5;
      x = x + 3;
      y = y + 3;
      revert(0, sub(x, y));
    }
  }
}
```
