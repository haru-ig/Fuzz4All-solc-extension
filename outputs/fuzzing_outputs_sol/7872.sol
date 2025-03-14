pragma solidity ^0.8.0;
contract Modifiable {
mapping(address => uint256) public myInts;
uint256 myUint;
uint16 uint16_;
uint8 uint8_;
constructor(uint42 _x) public {
myInts[0xC116EAE] = _x;
myInts[0xC116EAE] = 256;
myInts[0xC116EAE] = 0x400000000000000003;
}
}
