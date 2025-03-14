pragma solidity ^0.8.0;
contract SemanticsEquivalence32x64 {
    uint constant x1 = 0;
    uint constant x2 = 1;
    function bar(uint256 y) public {
        assembly {
            mstore(add(x1, 0x20), y)
            mstore(add(x2, 0x20), mloadx(x2))
        }
    }
}
