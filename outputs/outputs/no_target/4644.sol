pragma solidity ^0.8.0;
contract C {
function f(uint8 x) public pure {
f(x);
}
function f(uint160 x) public pure {
f(x);
}
function f(uint256 x) public pure {
f(x);
}
}

pragma solidity ^0.8.0;
contract I {
function f(uint256 x) public pure view returns (uint256);
}
contract C0 is I {
constructor() public {
f(1);
}
function f(uint8 x) public pure {
f(x);
}
function f(uint160 x) public pure {
f(x);
}
function f(uint256 x) public pure {
f(x);
}
function f(address x) public pure {
uint8 x8; uint160 x160; uint256 x256; address xAddress; xAddress = this; x8 = xAddress; f(uint8(x8)); x160 = xAddress; x160 = this; x256 = xAddress; x256 = this; xAddress = 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890; x8 = xAddress; f(x8); x160 = xAddress; x160 = this; x256 = xAddress; x256 = this; xAddress = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF; x8 = xAddress; f(uint8(x8)); x160 = xAddress; x160 = this; x256 = xAddress; x256 = this; xAddress = 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef12345678901234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890; x8 = xAddress; f(x8); x160 = xAddress; x160 = this; x256
