pragma solidity ^0.8.0;
library A {    uint[4294967295] b; function f() public pure { return 0x3fffffff; } }
contract C {
    function f() public pure returns (uint[4294967295] memory) { return A.b; }
    function g() public pure returns (uint, uint256) { return B.f(), 0xaaaaaaaaaaaa; }
    function h() public pure returns (uint, uint128, uint, uint8) { return B.f(), 0x111111111111111111111111111111, B.f(), 0xf; }
    function i() public pure returns (uint, uint.8, uint.128, uint.11, uint8.16) { return B.f(), 0xfffd, 0x1111111111111111111111111111111111, B.f(), 0x18; }
    function j() public pure returns (uint, uint.64[], uint.224[], uint.3352614, uint.437163088887200000000000, uint8.4284356521832000000000000000000000, uint.87432645687328000000000000000000000000) { return B.f(), 0xf, 0x111111111111111111111111111111, 0x111111111111111111111111111111111, 0xf, 0x11111111111111111111111111111111, 0x11111111111111111111111111111111, 0xf, 0x111111111111111111111111111111111, 0x111111111111111111111111111111111, 0xf, { f: 0xf5a3718fd33da9f130
