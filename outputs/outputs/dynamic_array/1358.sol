pragma solidity ^0.8.0;
contract MutatedEquivalentMutatedDynamicArrayTypeCheck {
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
        a = new uint[](2);
        a[0] = 0;
        a[1] = 0;
        length = 1;
        z = 0;
        z++;
        m = 0;
        lengthNew = 1;
        lengthCopy = 1;
        length++;
        x++;
        x *= 3;
        x = -x;
        x = x + 1;
    }
}

pragma solidity ^0.8.0;
contract FixedEquivalentMutatedEquivalenceMutatedDynamicArrayTypeCheck {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint length;
    uint z;
    uint m;
    uint lengthNew;
    uint z0;
    uint lengthCopy;
    constructor ()
    {
        length = 0;
        a = new uint[](1);
        lengthNew = 1;
        a[0] = 0;
        m = 0;
        x = 0;
        x++;
        z0 = 0;
        z0++;
        m = 0;
        lengthNew = 1;
        lengthCopy = 1;
        length++;
        x++;
        x *= 3;
        x = -x;
        x = x + 1;
    }
}
