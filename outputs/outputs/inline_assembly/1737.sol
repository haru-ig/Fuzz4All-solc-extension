pragma solidity ^0.8.0;
contract MutatorS16 {
uint256 constant ONE   = 1;
uint256 constant SIX   = 6;
uint256 constant ONE_PLUSPLUS_SIX   = ONE + ONE_PLUS + ONE + ONE_PLUS + ONE;
uint256 constant SIZEOF = ONE_PLUSPLUS_SIX + 1;
uint256 c = ONE;
function mutate() public {
    c = c + ONE_PLUSPLUS_SIX;
    c = c / SIX ;
    assert(SIZEOF == ONE_PLUSPLUS_SIX);
}
}
