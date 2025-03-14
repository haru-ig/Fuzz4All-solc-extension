pragma solidity ^0.8.0;
contract Receiver {
  uint public returnedUInt;

  function receive(uint i) payable external {
    returnedUInt = uint24();
  }
}
