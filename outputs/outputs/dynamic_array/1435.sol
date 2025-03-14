pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[2[]][2][] private array2;
    function MutatedFunction() public {
        array2.push(new uint256[2][2]());
    }
}
