pragma solidity ^0.8.0;
contract SemanticsEquivalence24x1 {
    bytes32 constant x1 = 1;
    bytes32 constant x2 = 2;
    uint256 constant x3 = 1;
    uint8 constant x4 = 5;
    uint constant x5 = 2;
    uint constant x6 = 42;
    uint8 constant x7 = 7;
    uint constant x8 = 5;
    bytes32 constant x10 = keccak256("This is a keccak256 hash. It takes the same input. It is 32 bytes (or 20 bytes if you use little endian arithmetic).");
    bytes32 constant x11 = keccak256("This is a keccak256 hash. It takes the same input. It is 32 bytes (or 20 bytes if you use little endian arithmetic).");
    function bar() public pure {
        assembly {
            mstore(add(x11, 0x20), 0x0)
            mstore(add(x10, 0x20), add(mload(add(x11, 0x20)), mload(add(x11, 0x20))))
            mstore(add(x1, 0x20), x1)
            mstore(add(x2, 0x20), mload(x2))
            mstore(add(x3, 0x20), mload(x3))
            mstore(add(x5, 0x20), mload(x5))
            mstore(add(x4, 0x20), bswap(sload(add(x3, 0x20))))
            mstore(add(x6, 0x20), mload(x6))
            mstore(add(x7, 0x20), mload(x7))
            mstore(add(x8, 0x20), mload(x8))
            mstore(add(mem1, 0x20), calldataload(sub(calldataload(0x4), 0x6)))
            mstore(add(mem2, 0x20), calldataload(sub(calldataload(0x3), 0x5)))
            mstore(0x34, calldataload(0x6))
            mstore8
