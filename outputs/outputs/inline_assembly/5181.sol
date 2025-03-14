pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  mapping (uint => uint) public mappingWithIncrements;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function setCounter(uint x) public {
    uint newCounter = counter + x;
    mappingWithIncrements[newCounter] = newCounter;
    counter = newCounter;
    emit CounterUpdated(counter);
  }
  function mutatedCounter(uint x) public returns (uint) {
    return CounterWithIncrements(mappingWithIncrements[counter + x]).returnSum();
   }
  event CounterUpdated(uint indexed updatedValue);
}
