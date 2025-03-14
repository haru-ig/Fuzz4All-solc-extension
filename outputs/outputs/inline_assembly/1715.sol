pragma solidity ^0.8.0;
contract MutatorS15 {
  uint256 constant ONE = 1;
  uint256 constant ONE_PLUS_SIX = ONE + 6;
  uint256 constant OX = 10;
  uint256 constant SIX_PLUS_ONE_PLUS_OX = 6 + ONE_PLUS_SIX + OX;
  function constantInitializer() public pure {
    assert(SIX_PLUS_ONE_PLUS_OX == 8);
  }
  mapping(uint256 => uint256) public memory;
  uint256 memoryVal;
  function constantInitializer2() public pure {}
  function mutate() public {
    memoryVal = memory[ONE] = ONE_PLUS_SIX + memory[ONE] + OX;
  }
}
