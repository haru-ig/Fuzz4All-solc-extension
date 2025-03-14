pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint counter;
  uint newCounter;
  constructor(address payable payee) public {
    to = payee;
    newCounter = 1;
  }

  function counterWithIncrement() public {
    newCounter += 1;
  }
  function myIncrement() public {
    newCounter += 5;
  }
  function decrementCounter(uint id) public {

    counter = 0;
  }
  function() external payable {
    msg.sender.send(msg.value);
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
  function printCounter() public view returns (uint) {
    return newCounter;
  }
}
pragma solidity 0.8.6;
contract Storage{
    address payable to
