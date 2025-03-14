pragma solidity ^0.8.0;
contract MutatorS15 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
function mutate() public {
    assert(SIZE == SIZE);
}
uint256 constant INITIALIZER = 100;
function constantInitializer() public pure {
  assert(INITIALIZER == 100);
}
uint256 c = ONE;
void constantCall() public {
  c = ONE_PLUS;
}
void pureCall() public pure {
  c = SIX + 1;
}
}
