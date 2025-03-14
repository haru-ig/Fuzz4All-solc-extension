pragma solidity ^0.8.0;
contract A {
uint e;
function f() public {}
}
contract B implements A {
uint e;
function f(uint160 c) public returns(uint256) {
return (uint160(a) >> 1);
}
}
contract B_2 {
uint e;
function f(uint160 c) public returns(uint256) {
return a >> 1;
}
}
contract A_2 {
uint e;
function f(uint256 c) public {
assert (a == 0x1);
uint256 b = 0;
for (b;b!= 5;){b = b << 4;}
if (a < c * b) {
} else {
}
}
}
