pragma solidity ^0.8.0;
contract MutatorS34 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
function mutatorConstant(uint256 _constants) public {
  assert(_constants == 6);
}
function mutate() public {
  SIZE--;
}
uint256 constant_result = onePlus;
}
