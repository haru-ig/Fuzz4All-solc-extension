pragma solidity ^0.8.0;
contract MutatorS28 {
uint256 constant ONE     = 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX - 1;
uint256 c = ONE;
function mutate() public {
    c = (SIZE - ONE_PLUS_SIX + SIZE) + ONE_PLUS;
    c = SIX * ONE - ONE_PLUS_SIX - ONE;
    c = ONE_PLUS * ONE / ONE_PLUS_SIX + ONE_PLUS_SIX - ONE;
    c = SIZE / TWO - SIZE * ONE;
    c = ONE_PLUS_SIX * SIX - ONE_PLUS_SIX;
    assert(ONE_PLUS_SIX - ONE == SIZE);
}
