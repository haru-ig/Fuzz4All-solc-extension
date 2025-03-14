pragma solidity ^0.8.0;
contract Equivalent2 {
uint256 x;
address a;
uint256 t;
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
}
function mutate (uint256 _h) public {
  t+=_h;
  x=2;

}
function revertVal (uint256 _h) public {
  x = _h;
}
}
