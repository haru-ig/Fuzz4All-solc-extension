pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4 {
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
        length++;
        ArrayItem memory a;
        a.b = true;
        array[0] = a;
        array[0].b = false;
        index = 1;
        index--;
        index++;
        index++;
        lengthAfterArrayChange = index;
    }
}
