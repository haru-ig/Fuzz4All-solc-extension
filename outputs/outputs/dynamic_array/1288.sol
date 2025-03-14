pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck2 {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[2] public b;
    uint public bLength;
    constructor ()
    {
        b.length = 0;
        bLength++;
    }
    function updateArray() public {
        b[bLength].b = true;
        b.length++;
    }

}
