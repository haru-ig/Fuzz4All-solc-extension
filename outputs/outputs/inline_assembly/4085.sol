pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint256 constant x1 = 1;
    uint y1 = 2;
    uint256 constant x20 = 1;
    uint64 constant x21 = 4;
    function bar(uint256 y) public {
        assembly {
            mstore(add(x1, 0x40), x21)
            mstore(add(x1, 0x80), x20)
            mstore(add(x20, 0x40), mload(add(x1, 0x10)))
            mstore(add(x21, 0x40), mload(add(y1, 0x10)))
        }
    }
}
