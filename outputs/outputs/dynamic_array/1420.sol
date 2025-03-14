pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[][] public array1;
    function MutatedFunction() public {
        array1.push(new uint256[2]);
    }
}
