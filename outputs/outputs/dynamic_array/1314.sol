pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck2 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint index = 0;
    uint public length;
    address addr;
    uint pubIndex;
    uint lengthAfterArrayChange;
    constructor ()
    {
        addr = msg.sender;
        length = 1;
        ArrayItem memory a0;
        a0.b = false;
        array[0] = a0;
        array[0].b = true;
        index = 1;
        index--;
        index++;
        index++;
        lengthAfterArrayChange = index;
    }
}
