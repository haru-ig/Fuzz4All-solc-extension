pragma solidity ^0.8.0;
contract NonMutatedExamples10 {
  function nonmutated() public pure returns(uint128, uint256) {}
}

contract MutatedExamples13 {
  function mutated() public returns(uint128) {
    return 0x10;
  }
}
