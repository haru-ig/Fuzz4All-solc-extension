pragma solidity ^0.8.0;
contract EquivalentSemanticallyEquivalencdDynamicArrayTypeCheck3 {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index;
    uint length;
    address addr;
    uint public pubIndex;
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
        length -= 1;
        ++index;
        ++index;
        ++index;
        lengthAfterArrayChange = length;
        pubIndex = index;
        length += 1;
    }
}
