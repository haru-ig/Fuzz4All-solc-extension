pragma solidity ^0.8.0;
contract C {
  uint public counter;
  constructor() public {
    counter = 1;
  }
  function setCounter(uint x) public {
    uint b;
    uint b1;
  }
  function changeCounter() public {
    counter++;
  }
  function changeCounter(uint x) public {
    counter+= x;
  }
  function changeCounter2(uint x) public {
    uint c;
  }
  function changeAndReturnCounter() public {
    uint x;
    uint c;
    return c;
  }
  function changeAndReturnCounter2() public {
    uint x;
  }
  function changeAndReturnCounter3() public {
    uint x;

  }
  event CounterChanged(uint indexed counter);
}
