pragma solidity ^0.8.0;
contract B_1 {
uint8 internal a;
uint256 internal b;
constructor() public { a = 0x1; b = 0xf140000000000000; }
function f(uint256 c) public {
assert (a == 0x3);
uint8 b = 0;
for (b;b!= 5;){b = b << 4;}
if (a == c * b) {
} else {
}
}
}
