pragma solidity ^0.8.0;
contract C { uint b; constructor() public {b = uint(uint256(uint8(0x3))) + 1;} }

pragma solidity 0.8.0;
contract C { uint b; constructor() public {b = uint(uint256(uint8(0x3))) + 2;} }
