pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256[][][] internal array3;
    function MutatedFunction() public {
        array3.push(new uint256[2][2][][](2));
    }
}
