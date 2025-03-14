pragma solidity ^0.8.0;
contract SemanticsEquivalence24x2 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        assembly {
            mstore(x1, 1)
            x1 := x1 + 1
            mstore(x2, 1)
            x2 := x2 + 1
        }
    }
}
