pragma solidity ^0.8.0;
contract SemanticsEquivalence24xSemiEquivalent {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        X: {




            uint r := mload(add(x2, 1))
            mstore(x2, mload(x1))
            mstore(x1, r)
            break X
        }
    }
}
