pragma solidity ^0.8.0;

contract Caller {
  function call(Mutator memory) external;
}

pragma solidity ^0.8.0;
contract FallbackMutator{
  address fallback;

  constructor(address _fallback) {
    fallback = _fallback;
    mutatorCaller();
  }

  mutatorCaller() public {
    mutator mutator;
    assembly {

      let ptr := mload(0x40)
      fallback := mload(ptr)
    }
    fallback.call{value: 0}(mutator{value:0}(0));
  }
}
