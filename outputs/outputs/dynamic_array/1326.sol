pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index = 0;
    uint public length;
    address addr;
    uint public pubIndex;
    uint public lengthBeforeArrayChange;
    uint public lengthAfterArrayChange;
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
        lengthBeforeArrayChange = index;

    }
    function update() public {
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
