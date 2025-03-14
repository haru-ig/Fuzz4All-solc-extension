pragma solidity ^0.8.0;
contract SemanticsEquivalence64x64 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore(add(x1, 0x100), mload(x2))
            mstore(add(x2, 0x100), y)
        }
    }
}
