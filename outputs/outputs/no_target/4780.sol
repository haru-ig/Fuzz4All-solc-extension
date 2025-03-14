pragma solidity ^0.8.0;
 contract C_1_6_2 {
uint8 internal a;
uint256 internal b;
constructor() public { a = 0x1; b = uint256(1 << 208 - 208); }
}

pragma solidity ^0.8.0;
contract C_1_6_3 {
bytes32 internal a;
constructor() public { a = keccak256(abi.encodePacked(uint17500000, uint160(uint160(-1)))); }
}
