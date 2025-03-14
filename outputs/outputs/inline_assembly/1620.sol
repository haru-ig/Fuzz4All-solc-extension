pragma solidity ^0.8.0;
contract Mutator4 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}
  function mutate(uint256 _x) public
  payable {
  if (msg.value >= 5*_x) {x += (_x*0.5); _x = 0;} else {x -= (_x-msg.value); _x += msg.value;}
  if (msg.value == 0) {  y -= 1; } }
}
