pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint[] a;
    uint length;
    uint z;
    uint m;
    uint lengthOld;
    uint mLength;
    uint lengthNew;
    uint[] b;
    uint nLength;
    uint lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        uint storage memory storage1 = x;
        storage1++;
        storage mStore = m;
        storage mStoreLength = length;
        mLength++;
        lengthOld = 1;
        m = 0;
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        lengthOld++;
    }
}
