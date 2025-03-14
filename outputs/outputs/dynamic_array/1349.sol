pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint[] a;
    uint length;
    uint z;
    uint m;
    uint lengthNew;
    uint[] b;
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
