pragma solidity ^0.8.0;
contract Mutator {
uint256 internal x;
constructor(uint256 _x, uint256 _y) {
    x = _x + 2;
}
function mutate(uint256 _x) public {
x += _x;
}
}
