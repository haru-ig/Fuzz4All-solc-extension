pragma solidity ^0.8.0;
contract new_sn6096 { uint public x = uint(1); function  mutate(uint) public { x = uint(uint(1)); } }
contract old_sn5844 { uint x = uint(1); function myFunction(uint) returns (uint) { x = uint(20000000000000000000); return x; } }
contract new_sn5844 { uint x = uint(1); function myFunction(uint) returns (uint) { x = uint(uint(1)); return x; } }
contract old_sn5351 { bytes32 x = bytes32(keccak256(abi.encodePacked("sn5350"))); function myFunction() public returns (bytes32) { x = bytes32(keccak256(abi.encodePacked("sn5844"))); return x; } }
contract new_sn5351 { bytes32 x = bytes32(keccak256(abi.encodePacked("sn5844"))); function myFunction() public returns (bytes32) { x = bytes32(keccak256(abi.encodePacked("sn5350"))); return x; } }
contract old_sn6095 { bool x = bool(false); function myFunction() public returns (bool) { x = bool(true); return x; } }
contract new_sn6095 { bool x = bool(true); function myFunction() public returns (bool) { x = bool(bool(false)); return x; } }
contract old_sn5350 { enum A {A0} x; function myFunction() public returns (A) { x = A.A1; return x; } }
contract new_sn5350 { enum A {A0} x; function myFunction() public returns (A) { x = A(A.A1); return x; } }
contract old_sn6121 { enum A {A0} x; function myFunction() public returns (A) { x = A.A1.value(2000000000000000000)(); return x; } }
contract new_sn6121 { enum A {A0} x; function myFunction() public returns (A) { x = A(A.A1).value([2000000000000000000])(); return x; } }
contract old_sn5843 { bytes32 x = bytes32(); function create(uint8, bytes32) public { x = bytes32(string("hexstring")); } }
contract new
