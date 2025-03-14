pragma solidity ^0.8.0;
contract MutatorS18 {
uint256 constant ONE     = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + ONE;
uint256 c = ONE;
function mutate() public {
    c = c + ONE_PLUS_SIX;
    c = c / SIX;
    assert(SIZE == ONE_PLUS_SIX);
}
}













contract MutatorS20 {
uint256 constant ONE     = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + ONE_PLUS + ONE;
uint256 public mutated;
function mutate() public {
    mutated = ONE_PLUS_SIX;
    mutated = mutated - SIX;
    assert(SIZE == ONE_PLUS_SIX);
}
}
