pragma solidity ^0.8.0;
contract MutatorS26 {
uint256 constant ZERO = 0;
uint256 constant ZERO_TWO = 0x20000000000000000000000000000000000000000000000000000000000000000;
uint256 private a;
function doSomething() public {
    a = ZERO_TWO;
}
function doOneThing() public {
    require(a == ZERO_TWO);
}
}
