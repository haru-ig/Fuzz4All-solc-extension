pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck23 {
    uint256[2][3][] array = new uint256[2][3]();
    function MutatedFunction() public {
        for (uint i = 0; i < 10; i++) {
            array[0][1] = i;
        }
    }
}
