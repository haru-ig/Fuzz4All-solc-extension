pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheckSub {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        aLength = 0xd4bee02000000000000000000000000000000000000000000000000000000000;
        a[1].b = true;
    }
    function updateArray() public {
        aLength = 1b & uint(45) >> uint(42);
        a[0].b = true;
    }
    function destroyArray() public {
        aLength = 0;
    }
}
