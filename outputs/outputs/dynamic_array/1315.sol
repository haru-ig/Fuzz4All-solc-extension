pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck3 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint index = 0;
    uint public length;
    address addr;
    uint pubIndex;
    uint lengthAfterArrayChange;
    uint lengthSet;
    constructor ()
    {
        addr = msg.sender;
        length = 1;
        ArrayItem memory a0;
        lengthSet = 2;
        a0.b = false;
        array[2] = a0;
        array[1].b = true;
        index = 1;
        length += 2;
        index -= 2;
        while(length <= lengthSet) {
            length--;
            array[length + 1] = array[length];
        }
        length += 1;

        lengthAfterArrayChange = length;
    }
}
