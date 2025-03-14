pragma solidity ^0.8.0;
contract OriginalContract {
  uint public value;

  function originalMethod() public {
    address myAddress = msg.sender;
    value = 2321312312;
    msg.sender.transfer(2321312312);
    msg.sender.transfer(2321312312);
    msg.sender.transfer(value);
    msg.sender.transfer(2321312312);
    msg.sender.transfer(2321312312);
    msg.sender.transfer(value);
    msg.sender.transfer(value);
    msg.sender.transfer(value);
    msg.sender.transfer(value);
    msg.sender.transfer(2321312312);
    msg.sender.transfer(2321312312);
  }
  receive() external payable {}
}
contract MutatedContract {
  uint public value;

  function originalMethod() public {
    address myAddress = msg.sender;
    value = 2321312312;
    msg.sender.transfer(2321312312);
    msg.sender.transfer(value);
    msg.sender.transfer(value);
    MyLibrary.getSomeConst3();
  }
}
