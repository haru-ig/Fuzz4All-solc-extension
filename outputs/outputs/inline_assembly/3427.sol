pragma solidity ^0.8.0;
contract PostMutability {
  uint public constant ZERO = 0;
  uint public value;
  constructor () public {
    value = ZERO;
  }
  function mutate () internal {
    value += 1;
  }
}
contract Mutability
{
  address public owner;
  uint internal counter;
  event Log_Set (uint);
  event Log_Mutate_1 (uint);

  constructor () public {
    owner = msg.sender;
    counter = now;
  }

  function setCounter () public {
    counter = now;
  }

  function setCounter_2 (uint _counter) public {
    counter = _counter;
  }

  function runMutability_1 () public {
    Log_Mutate_1(counter);
    mutate_1();
  }

  function runMutability_2 () public {
    Log_Mutate_2(counter);
    mutate_2();
  }

  function setOwner (address _owner) public onlyOwner {
    owner = _owner;
    emit Log_Set(counter);
  }

  function setOwner_2 (address _owner) public onlyOwner {
    owner = _owner;
    emit Log_Set(now);
  }

  function mutate_1() internal {
    counter = now;
  }

  function mutate_2() internal {

  }
}
