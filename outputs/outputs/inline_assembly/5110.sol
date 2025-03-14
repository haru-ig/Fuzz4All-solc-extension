pragma solidity ^0.8.0;
contract C {
  mapping (address => uint) public balances;
  mapping (address => uint) public nonces;
  constructor() public {
  }

  struct Data {
    bool didCall;
    bool didCallWithoutReverting;
  }

  mapping (address => Data) public data;

  event CallWithNoReturn(uint value);
  event CallWithRevert(uint value);

  function () external payable {
    data[msg.sender].didCallWithoutReverting = true;
  }

  function test() public {
    data[msg.sender].didCall = true;
  }
}
