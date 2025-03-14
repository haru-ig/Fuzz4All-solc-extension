pragma solidity ^0.8.0;
contract Mutated1 {
struct A {
uint i;
uint[2] a;
bytes32 b;
}
A a;
address payable payTo;
constructor(uint _i, uint[2] memory _a, bytes32 memory _b) {
a.i = _i;
a.a = _a;
a.b = _b;
}
function mutate1() public {
a.a *= 2;
a.b += 1;
a.a += 1;
a.a[0] *= 2;
a.a[0] += 1;
a.a[1] *= 2;
}
}

address payTo2;
address payTo3;
address payTo4;
address payTo5;
address payTo6;
address payTo7;
address payTo8;
address payTo9;
uint256 mutInt117;
address payTo10;
address payTo11;
address payTo12 = address(0xe4440c8496Dce6A87fE6332ec8282854b9C76263);
address payTo13;
uint256 mutInt118;
address payTo14;
uint256 mutInt119;
address payTo15;
uint256 mutInt120;
address payTo16;
uint256 mutInt121;
address payTo17;
uint8 mutByte122;
uint256 mutInt123;
address payTo18;
uint256 mutInt124;
address payTo19;
uint128 int256;
address payTo20;
uint256 mutInt129;
uint32 uint256;
uint256 mutInt130;
address payTo22;
uint256 mutInt131;
uint32 uint2561;
uint256 mutInt132;
uint256 mutInt133;
address memory payTo23;
uint256[] memory payTo24;
(address, uint32, uint256, uint128) payTo25;
uint256[] array26;
mapping(uint256 => uint) array27;
uint256[21][21] array28;
function() payable {}
function() public payable {}
}
