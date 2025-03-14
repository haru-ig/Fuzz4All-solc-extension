pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[][][][][2] private array3;
    function MutatedFunction() public {
        array3 = new uint256[][][][][2][];
    }
}
