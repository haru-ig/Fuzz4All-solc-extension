pragma solidity ^0.8.0;
contract Caller {
  uint256 private gas;
  constructor () {
    gas = 0;
  }

  function receive(uint256 _gasValue) public {
    gas += _gasValue;
  }
}
