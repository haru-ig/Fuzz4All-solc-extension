pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck2 {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        aLength = 1;
        (a[aLength].b) = true;
    }
    function updateArray() public {
        aLength = 0;
        (aLength--) = true;
    }
}
