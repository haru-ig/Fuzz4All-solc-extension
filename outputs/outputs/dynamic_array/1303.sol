pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck3 {
    ArrayItem[] public a;
    uint public aLength;
    uint public i;
    constructor ()
    {
        aLength = 1;
        ArrayItem memory a0 = ArrayItem({b: false});
        a[aLength] = a0;
        a[aLength].b = true;
        i = 1;
        i = aLength = i + 1;
    }

}
