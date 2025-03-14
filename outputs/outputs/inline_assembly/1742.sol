pragma solidity ^0.8.0;
contract MutatorS28 {
uint256 constant ZERO      = 0;
uint256 constant ONE       = 1;
uint256 constant TWO       = 2;
uint256 constant THREE     = 3;
uint256 constant FIVE      = 5;
uint256 constant FIVE_SIX  = FIVE * SIX;
uint256 constant ONEHundred = ONE * 100;
uint256 c = TWO * ONEHundred + ONEHundred;
function mutate() public {
    c = c + ONEHundred;
    c = c * FIVE_SIX + ONEHundred;
    c = c / FIVE_SIX;
    assert(c == FIVE_SIX);
}
}
