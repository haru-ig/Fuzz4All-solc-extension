pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck2 {
    struct ArrayItem {
        uint a;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0;
        a0.a = 0;
        a[aLength] = a0;
        a[aLength].a = 1;
    }
    function updateArray() public {
        aLength = 0;
        aLength--;
    }
}
