pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4_Copy2 is EquivalentMutatedDynamicArrayTypeCheck4_Copy {
    constructor ()
    {
        array[0].b = true;
        array[1].b = false;
        array[1].b = true;
        length++;
    }
}
