pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck {
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
        array = new ArrayItem[](1);
        ArrayItem memory arrayItem = new ArrayItem();
        array = new ArrayItem[](2);
        array[0] = arrayItem;
        array[1] = new ArrayItem();
        array[0] = array[1];
        lengthNew = 2;
        lengthCopy = 2;
        x = 0;
        x++;
        m = 0;
        length = 2;
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        length++;
    }
}
