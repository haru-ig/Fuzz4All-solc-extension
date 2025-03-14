pragma solidity ^0.8.0;
contract Mutate {
uint256 x;
address a;
uint256 t;
constructor() public {
    x=2;
    a=msg.sender;
    t=6;
}
function mutate(uint256 _h) public {
  t+=_h;
  x=3;
}
}
