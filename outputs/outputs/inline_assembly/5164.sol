pragma solidity ^0.8.0;
uint c;
contract C {
  function f() public payable {
    c += msg.value;
  }
}
