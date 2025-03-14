pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[2][3][][][] private array3;
    function MutatedFunction() public {
        for (uint i = 0; i < 33; i++) {
            array3.push(new uint256[2][3][][](i));
        }
    }
}
