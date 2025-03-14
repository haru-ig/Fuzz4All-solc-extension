pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
  function a() public {
    emit aEvent();
    emit aEvent();
    emit aEvent();
  }
  uint internal contractCounter;
  constructor () {
    contractCounter = 0;
  }
  event aEvent() external {
    emit aEvent();
  }
  function b() public {
  contractCounter = contractCounter + 2;
  }
}
