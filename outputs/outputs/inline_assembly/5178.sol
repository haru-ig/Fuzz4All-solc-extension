pragma solidity ^0.8.0;

contract MutatedContract {

  C c;
  event LogCounterUpdated(uint indexed updatedValue);
  constructor(address payable _to) public {
    c = new C(_to);

    c.to = payable(uint160(address(this)));
    c.setCounter(5);
    c.mutatedCounter(2);
  }

  function checkAndUpdate() public returns (uint) {
    require(c.checkCounter() == 5, "Wrong Counter");
    return c.setCounter(2).checkCounter();
  }

  function checkAndMutate() public returns (uint) {
    uint lastCounter = c.setCounter(2).checkCounter();
    uint mutatedCounter = c.setCounter(4).checkCounter();
    require(lastCounter + 1 == mutatedCounter, "Wrong Counter");
    return mutatedCounter;
  }
}
