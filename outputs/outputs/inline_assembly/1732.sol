pragma solidity ^0.8.0;
contract MutatorS16 {
uint256 constant ONE     = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
uint256 s;
modifier mutator256() {
    s = ONE_PLUS_SIX;
    _;
}
constructor(){
    mutator256 {
    c += ONE_PLUS_SIX;
    c /= SIX;
    assert(SIZE == ONE_PLUS);
}
}
