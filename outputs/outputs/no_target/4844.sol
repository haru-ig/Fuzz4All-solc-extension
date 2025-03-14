pragma solidity ^0.8.0;
library C { struct S { uint8 s; bytes x; mapping (bytes32=>uint32) a; bool y } function f() public pure returns (S memory) {S memory s = S (1, "1234567890".bytes, mapping (bytes32=>uint32), true); return s;  }  }

pragma solidity 0.8.0;
library ABIC { function f(uint8 _x) public pure returns (bytes memory) {return abi.encodeWithSignature("f(uint8)",_x);} }

pragma solidity 0.8.0;
contract D { function g() public pure returns (address) { return 0x123456789012345678901234567890; } }


pragma solidity 0.8.0;
contract E { function f(bytes memory b) public pure returns (uint memory) returns(uint _x) {return 1;} } contract F { interface I { function f() public pure returns (contract A); } contract A { function m() public pure returns (uint128) {return _f(); }} function _f() internal view returns (uint128) { return I(0).f().transfer(0x123); } } interface I { function g() public pure returns (contract B); } contract B { contract Z { function h() public pure returns (contract I); } function i() public pure returns (contract D); } function j() public pure returns (contract E) { return E(E(0).f(ABIC.f(640))).f(1,1); } } contract G { uint x; constructor() public {  for(uint i =0 ; i < 0xfffffffffffffff9c511 ; i ^= 7){ x++; return (address(1)); } } function f(uint j) public pure returns (address) { return (address(0,1,2)); } }
