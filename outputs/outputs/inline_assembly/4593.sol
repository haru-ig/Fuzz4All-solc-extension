pragma solidity ^0.8.0;
contract emulator { event aChanged(bytes5 indexed a); mapping (uint => uint) storage x; uint z; function test() public { emit aChanged(keccak256(bytes(abi.encodePacked(x[2], z)))) } }
