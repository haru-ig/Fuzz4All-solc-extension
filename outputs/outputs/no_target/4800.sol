pragma solidity ^0.8.0;
contract C { constructor () public {require(C_2.a!= C_2.a);} }
contract D { constructor () public {require(D_2.a!= D_2.a);} }
contract D_2 { uint256 a; constructor() public {a = uint256(uint8(0x3));} }
contract C_2 { uint256 a; constructor() public {a = uint256(uint8(0x3));} }
