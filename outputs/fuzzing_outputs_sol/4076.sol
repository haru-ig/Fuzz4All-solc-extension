pragma solidity ^0.8.0;
contract Mutation1 {
  function setMutantFallback() public {
    Mutation4 instance = new Mutation4();
    assembly {
      mstore(0x20, mload(0x20))
    }

    instance.myMutantFallback(7);
    uint256 state = uint256(uint32(0x20));
    assert(state == 96*7);
    revert();
  }
}
contract Mutation2 {
  function mutate() public {
    Mutation5 instance = new Mutation5();
    assembly {
      mstore(0x20, mload(0x20))
    }

    instance.myMutantFallback(9);
    uint256 state = uint256(uint32(0x20));
    assert(state == 96*9);
    revert();
  }

  function setMutantFallback() public {
    Mutation6 instance = new Mutation6();
    uint256 state = instance.myMutantFallback(8);
    uint8 x = uint8(state);
    revert();
  }
}
