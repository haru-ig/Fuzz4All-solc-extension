pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
  uint internal constant contractCounter = 0;
    constructor () {
    contractCounter++;
    }
    function a() public {
  contractCounter = contractCounter + 5;
  }
  function b() public {
  contractCounter = contractCounter + 2;
  }
}
```
