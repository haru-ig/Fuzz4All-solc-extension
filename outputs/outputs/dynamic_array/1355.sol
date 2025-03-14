pragma solidity ^0.8.0;
contract MutatedEquivalentDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint x;
    uint[] public a;
    uint length;
    uint z;
    uint m;
    uint lengthNew;
    uint[] public b;
    uint nLength;
    uint lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        x++;
        m = 0;
        length = 1;
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        length++;
    }
}

contract Test01 {
}
contract Test01 {
}
