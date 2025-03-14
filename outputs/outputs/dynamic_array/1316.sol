pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint index;
    uint public length;
    address addr;
    uint pubIndex;
    uint lengthAfterArrayChange;
    constructor ()
    {
        addr = msg.sender;
        length = 2;
        ArrayItem memory a;
        a.b = true;
        array[0] = a;
        array[1].b = true;
        index = 1;
        index--;
        index++;
        lengthAfterArrayChange = index;
    }
}
