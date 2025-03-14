pragma solidity ^0.8.0;
import "./ArrayMutatorMutator.sol";
contract ArrayMutator {

  struct Mutation {
    uint valueToMutate;
    ArrayMutatorMutator mutator;
  }

  constructor(uint x) {

    uint memory x_const = x;
    Mutation[] memory mutations = new Mutation[](100);
    for (uint i = 0; i < 100; i++) {
      mutations[i].valueToMutate = x_const;
      mutations[i].mutator = new Mutator();
      x_const++;
    }
  }

  function execute() public {
    for (uint i = 0; i < 100; i++) {
      Mutation memory m = mutations[i];
      m.mutator.setVal(i, m.valueToMutate);
      m.valueToMutate = 1;
    }
  }

  uint[] array1;
  uint i;
}
