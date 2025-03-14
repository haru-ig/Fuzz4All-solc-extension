pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[2][3][][][] private array3;
    function MutatedFunction() public {
        array3.push(new uint256[2][3][][](3));
    }
}
