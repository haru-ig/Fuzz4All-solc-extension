pragma solidity ^0.8.0;
contract NonRevertableFallback {
  uint public value = 100;
  constructor () {
    value = 300;
  }
  receive () external payable {
    uint received = value;
    value = 400;
    throw (bytes32(received));
  }
}
