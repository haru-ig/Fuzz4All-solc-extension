pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0;
        a0.b = false;
        a[aLength] = a0;
    }
    function updateArray() public {
        a[aLength].b =!a[aLength].b;
    }
}
