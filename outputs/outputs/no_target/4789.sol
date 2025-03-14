pragma solidity ^0.8.0;
contract B_2 {
uint8 internal a;
uint256 internal b;
constructor() public { a = a + a << a >> a; b = 0x100000000000; }
function f(uint256 c) public {
assert (c == 14840011643480244694);
uint8 b = b;
for (b;b!= 5;){b = b << 1;}
if (c == a + a << (a >> a) >> a) {
} else {
}
}
}
