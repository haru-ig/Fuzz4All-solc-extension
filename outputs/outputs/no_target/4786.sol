pragma solidity ^0.8.0;
contract B_2 {
uint8 internal a;
uint256 internal b;
constructor() public { a = 0x3; b = 0xf140000000000000; }
function f(uint256 c) public {
assert (a == 0x1);
uint8 b = a;
for (b;b!= 5;c=c<<4){}
if (a == c * b) {
} else {
}
}
}
