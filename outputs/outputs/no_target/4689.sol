pragma solidity ^0.8.0;
contract C {
uint256 public x;
constructor() public {
x = 0x7fffffffff;
}
function() public {
x -= 1;
}
function test() view public {
require(x > 1, 'x > 1');
x += 1;
}
}
