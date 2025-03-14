pragma solidity ^0.8.0;

contract Caller {
  function call2() public {

    EtherTester().receive();
  }
  function receive() public payable {

  }
}
