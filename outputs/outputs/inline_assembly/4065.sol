pragma solidity ^0.8.0;
contract SemanticsEquivalence25x1 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            mstore(add(x1, 0x20), mload(x1))
            mstore(add(x2, 0x20), x1)
        }
    }
}
