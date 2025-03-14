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
        aLength = 0;
        ArrayItem memory a0;
        a0.b = true;
        aLength--;
        a[i] = a0;
        i = i + 1;
        aLength = i;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = i;
    }
}
contract MutatedDynamicArrayTypeCheck3 {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    uint public j;
    uint public i;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0;
        a0.b = false;
        a[aLength] = a0;
        a[aLength].b = true;
        j = 1;
        j = aLength = j + 1;
        i = 1;
        i = aLength = i + 1;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = j;
        ArrayItem memory a0;
        a0.b = false;
        a[i] = a0;
        i = i + 1;
        aLength = i;
    }
}
contract MutatedDynamicArrayTypeCheck4 {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    uint public j;
    uint public i;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0;
        a0.b = false;
        a[aLength] = a0;
        a[aLength].b = true;
        aLength--;
        ArrayItem memory a1;
        a1.b = false;
        a[i] = a1;
        i = i + 1;
        aLength = i;
        aLength++;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
        aLength = j;
        ArrayItem memory a0
