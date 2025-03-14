pragma solidity ^0.8.0;
contract B {
uint8 a; constructor() public {a = 0x3;}
}
contract B_2 {
uint8 a; constructor() public {a = 0x3;}
function f(uint256 c) public {
if (a == 0) {
if (c == 0 && a!= 0) {
   return;
}
if (c >= 0x9 && a!= 1) {
   return;
}
if (a!= 0x3) return;
assert (a == c * b);
}
}
}
