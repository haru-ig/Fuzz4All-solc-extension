pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
  uint internal contractCounter;
    constructor () {
    contractCounter = 0;
    }
    function a() public {
  contractCounter = contractCounter + 5;
  bytes100;
  {
    assembly {
      {
        calldatacopy(0x20, returnData, 0x20)
        return(0, returnData, mul(returnData, 10))
      }
    }
  }
  function b() public {
  contractCounter = contractCounter + 2;
  }
  }
}
