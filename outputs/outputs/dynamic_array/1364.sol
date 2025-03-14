pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck7 {
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
        m = 0;
        length = 1;
        z = 0;
        z++;
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        length++;
    }
}
