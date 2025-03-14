pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
  uint internal contractCounter;
    constructor () {
    contractCounter = 0;
    }
    function a() public {
  assembly {
    contractCounter := contractCounter+4
  }
}
  function b() public {
  contractCounter = contractCounter + 3;
  }
}
