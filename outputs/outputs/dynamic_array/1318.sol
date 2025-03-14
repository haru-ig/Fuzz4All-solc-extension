pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint length;
    uint totalLengthAfterArrayChange;
    uint public addr;
    uint public pubIndex;
    address addrAfterArrayChange;
    uint public lengthAfterArrayChange;
    constructor ()
    {
        totalLengthAfterArrayChange = 1;
        addr = msg.sender;
        length = 1;
        ArrayItem memory a0;
        a0.b = false;
        array[0] = a0;
        array[0].b = true;
        length = 2;
        index = 1;
        index--;
        index = 2;
        length = 3;
        index = 3;
        length = 4;
        array[2] = ArrayItem({b:false});
        index = 0;
        addrAfterArrayChange = msg.sender;
        lengthAfterArrayChange = 0;
        length = length + 1;
        addrAfterArrayChange = addrAfterArrayChange + 1;
        length = length + 1;
        index = index - 1;
        addr = addr + 1;
        length = length + 2;
        addr = addr + 1;
        length = length + 2;
        index = index - 2;
        addr = addr + 1;
        length = length + 2;
        length = length + 3;
        index = 0;
        pubIndex = 0;
        array[1 + pubIndex] = ArrayItem({b:false});

        index = index + 1;
        pubIndex = 0;
        index = 6;
        length = length + 4;
        index = 2;
        length = length + 4;
        array[2 + pubIndex] = ArrayItem({b:false});

        index = index + 2;
        length = length + 1;
        length = length + 5;
        addr = addr - 1;
        addr = addr - 1;
        addr = addr + 1;
        addr = addr - 1;
        addr = addr - 2;
        addr = addr + 2;
        length
