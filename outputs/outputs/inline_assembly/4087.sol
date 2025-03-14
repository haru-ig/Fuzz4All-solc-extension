pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore(x1, x2)
            mstore(x2, y)
        }
    }
}
