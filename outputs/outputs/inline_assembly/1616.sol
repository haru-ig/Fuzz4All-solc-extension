pragma solidity ^0.8.0;
contract Mutator2 {
uint256 num = 3;
  uint256 x;

    uint256 y = 1;
constructor() public {
x = 3;
}
function mutate() public view{
num *= 2;
y /= num;
}
}
