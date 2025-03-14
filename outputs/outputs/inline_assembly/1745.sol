pragma solidity ^0.8.0;
contract MutatorS28 {
uint256 constant ONE     = 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX - 1;
mapping (uint256=>uint256) public c;
function mutate() public {
    c[ONE] = ONE_PLUS_SIX + ONE_PLUS_SIX;
    c[ONE] = ONE_PLUS_SIX * ONE;
    c[ONE] = ONE_PLUS_SIX / ONE_PLUS_SIX;
    c[ONE] = ONE_PLUS_SIX - ONE;
    assert(c[ONE] - ONE == SIZE);
}
}
