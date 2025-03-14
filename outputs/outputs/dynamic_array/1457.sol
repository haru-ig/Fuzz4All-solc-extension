pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck22 is SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint32[12] array4;
    function MutatedFunction() public {
        for (uint i = 0; i < 254; i++) {
            array4.push(uint32(i));
        }
    }
}
