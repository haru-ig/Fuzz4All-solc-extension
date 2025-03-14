pragma solidity ^0.8.0;
contract SemanticsEquivalence25x1 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 0x20), mload(x2))
            mstore(add(x2, 0x20), r)
        }
    }
}
