pragma solidity ^0.8.0;
contract Mutatable {
  struct State {
    uint value;
  }
  State storage state;

  event Set(uint indexed a);
  event Mutated();

  function set(uint _value) public {
    state.value = _value;
  }

  function setMutated () public {
    state.value++;
    emit Mutated();
  }
}
```
