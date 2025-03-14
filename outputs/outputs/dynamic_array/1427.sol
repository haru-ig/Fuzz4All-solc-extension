pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedGenericDynamicArrayTypeCheck22 extends SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    function MutatedFunction() public {
        array2[0].push(new uint256[](2));
    }
}
