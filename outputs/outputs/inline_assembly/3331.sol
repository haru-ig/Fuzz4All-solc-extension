pragma solidity ^0.8.0;

contract TestMutablility {
bytes internal data;
uint internal value = 0;
uint private nonmut = 0;
constructor () {
value = uint(keccak256(abi.encodePacked(keccak256()))));
nonmut = value;
data = abi.encodePacked(value);
}
}
