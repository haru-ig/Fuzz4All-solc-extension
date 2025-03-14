pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck2 {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    uint public i;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0;
        a0.b = false;
        a[aLength] = a0;
        a[aLength].b = true;
        i = 1;
        i = aLength = i + 1;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = i;
    }
}
