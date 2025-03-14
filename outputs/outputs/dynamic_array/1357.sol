pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck3 {
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
        x = 0;
        x++;
        m = 0;
        length = 1;
        array = new ArrayItem[](2);
        array[0].b = true;
        array[1].b = true;
        array.length = 2;
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        length++;
    }
}
