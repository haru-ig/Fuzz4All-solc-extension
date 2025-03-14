pragma solidity ^0.8.0;
struct Mutator {
  bool hasValue;
}
contract Mutated {
  Mutator value = new Mutator();
  bool public valueAfterMutation;
  function() external payable {
      valueAfterMutation = true;
  }
  function mutator() view returns(bool _hasVal) {
    return value.hasValue;
  }
  function mutate() mutates {
     if (hasValue) {
        value.hasValue = false;
     }
  }
}
contract Caller {
  function foo() public {
    Mutated x = new Mutated();
    x.mutate();
    valueAfterMutation = true;
    x.foo.value(0)();
  }
}
