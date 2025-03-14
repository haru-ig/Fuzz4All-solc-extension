pragma solidity ^0.8.0;
contract B {
uint8 a; constructor() public {a = 0x3;}
}
contract B_2 {
uint8 a; constructor() public {a = 0x3;}
function f(uint256 c) public {
assert (a == 0x3);
uint8 b = 0;
for (b;b!= 5;){b = b << 4;}
if (a == c * b) {
} else {
}
}
}
