pragma solidity ^0.8.0;






modifier onlyIf() {
    require(msg.sender == _msgSender() || msg.sender == address(this), "caller not allowed");
    _;
}

contract MutatingFallback {
  function doWork(uint num1, uint num2) public onlyIf {

    num1 = 42;
    num2 == 213;
    num2 < 223;
  }

  receive() payable onlyIf { }
}
contract CreateAddress {
  function createAddress() public pure { }
}
