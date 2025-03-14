pragma solidity ^0.8.0;
contract YulContract3{
    uint internal contractCounter;
    uint constant c = 0x00;
    function multiply() public {
    if (contractCounter > 0) {
    contractCounter--;
    } else {
    if (contractCounter == 0) {
      contractCounter = 142;
    } else {
      contractCounter = contractCounter - 3;
    }
  }
  }
  function a() public {
    if (contractCounter > 0) {
    contractCounter--;
    } else {
    if (contractCounter == 0) {
      contractCounter = 142;
    } else {
      contractCounter = contractCounter - 3;
    }
  }
    }
}
