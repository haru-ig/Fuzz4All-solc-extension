pragma solidity ^0.8.0;
contract PostMutateable {
  uint internal value;
  constructor () public {
    value = ZERO;
  }
  function setValue (uint _value) internal {
    assert(address(this).balance > 0);
    value = _value;
  }
  function mutate () internal {
    uint _value = value;
    value = value + 1;
    value = _value;
  }
}

contract PreMutateTests {
    PreMutability immutable public preMutate;
    PostMutateable immutable public postMutate;
    constructor () public {
        postMutate = new PostMutateable();

        preMutate = new PreMutability();
        preMutate.setValue(1);
        preMutate.mutate();
        preMutate.setValue(2);
        postMutate.mutate();
        assert(preMutate.value == 2);
        assert(postMutate.value == 4);
    }
}
