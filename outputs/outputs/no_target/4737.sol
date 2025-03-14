pragma solidity ^0.8.0;
contract A {
C c;
constructor (address z) {
 c.c = z;
}
}

pragma solidity >=0.8.0 < 0.9.0;
contract B {
A a;
address public e;
constructor (address z) {
 a.c = z;
}
function f() public view {
 return a.a.a.c;
}
}<fim_middle>contract test {
B b;
function f() public view {
 uint256 f_result = b.f();
assert(f_result == (uint256)1);
}
receive() external payable {}
}
