pragma solidity ^0.8.0;
contract Mutator2 {
uint256 x;
uint256 a = 1;
uint256 y = 1;
function mutate(uint256 _x) public {
a -= 1;
}
}
