pragma solidity ^0.8.0;
contract SemanticsEquivalence24xCrossEquivalence {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            let r := add(x1, x2)
            mstore(add(x2, 1), mload(x1))
            mstore(add(x1, 1), r)
        }
    }
}
