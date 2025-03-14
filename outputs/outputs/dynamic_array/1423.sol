pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19a {
    uint256[][] public array1;
    uint256[][][] public array2;
    function MutatedFunction() public {
        array1.push(new uint256[](2));
        array2.push(new uint256[][][](2));
    }
}
