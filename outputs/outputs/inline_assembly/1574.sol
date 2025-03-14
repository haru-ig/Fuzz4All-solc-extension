pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
address a;
constructor() public {
    x = 1;
    a = msg.sender;
}
function mutate (uint256 _h) public {
  x=x+1;
  a=msg.sender;
}
function printX() public view returns (uint256) {
    return x;
}
function printA() public view returns (address) {
    return a;
}
}
