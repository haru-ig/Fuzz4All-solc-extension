pragma solidity ^0.8.0;
contract MutatorS28 {
uint256 constant ONE     = 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS = ONE + ONE+ONE;
uint256 constant SIZE = ONE_PLUS - SIX;
uint256 c = ONE;
function mutate() public {
    c = ONE_PLUS + ONE_PLUS + ONE_PLUS + ONE_PLUS;
    c = ONE_PLUS * ONE;
    c = ONE_PLUS / ONE;
    c = ONE - ONE_PLUS;
    c = ONE - ONE;
    assert(ONE - ONE == SIZE);
}
}
