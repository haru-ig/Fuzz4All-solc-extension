pragma solidity ^0.8.0;
contract Equivalent {
address a;
uint256 x;
constructor() public {
    x = 1;
    a = msg.sender;
}
function mutate (address _h) public {
  a=msg.sender;
  x=x+1;
}
function printX() public view returns (uint256) {
    return x;
}
function printA() public view returns (uint256) {
    return a;
}
}
