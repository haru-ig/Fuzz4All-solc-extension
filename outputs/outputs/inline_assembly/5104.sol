pragma solidity ^0.8.0;
contract C {
  address payable non_payable;
  uint public counter = 0;
  constructor(address payable payee) public {
    non_payable = payee;
    emit IncreaseCounter(1);
    require(msg.program.code.length > 0);
  }
  function IncreaseCounter(uint b) public {
    assembly {
      counter := add(counter, b)
    }
    emit IncreasedCounter(b);
    emit IncreaseCounter(b);
  }
  event IncreaseCounter(uint b);
  event IncreasedCounter(uint b);
}

```
