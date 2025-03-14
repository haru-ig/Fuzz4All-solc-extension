pragma solidity ^0.8.0;
contract B_1 {
uint internal a;
uint internal b;
constructor() public { a = 0x1; b = 0xf140000000000000; }
function f(uint c) public {
assert (a == 0x3);
assert (b == 483871);
uint8 b = 0;
for (b;b!= 5;){b = b << 4;}
if (a == c * b) {
} else {
}
}
function g() public {
f(99999 * 5);
}
function h() public {
g();
assert (a == 0x3);
}
}
