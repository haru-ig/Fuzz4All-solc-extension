pragma solidity ^0.8.0;
contract UnsemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[2][][][] private array3;
    function MutationTypeChecker() public {
        array3.push(new uint256[2][][](3));
    }
}




contract Contract1 {
    function MutatedSemamaticlMutatedDynamicArrayTypeCheck() external {}

    function UnsemanticsMutatedSemamaticlMutatedDynamicArrayTypeCheck() external {}

    function MutatedSemamaticlUnsemanticsMutatedDynamicArrayTypeCheck() external {}

    function UnsemanticsMutatedSemamaticlMutatedDynamicArrayTypeCheck() external {}
}
