pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint index = 0;
    uint public length;
    address addr;
    uint pubIndex;

    constructor ()
    {
        addr = msg.sender;
        array = new ArrayItem[](1);
        length = 1;
        ArrayItem memory a0;
        a0.b = true;
        array[0] = a0;
        array[0].b = false;
        length = index;



        index = length;
        length = array.length;




    }
}
