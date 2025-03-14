pragma solidity ^0.8.0;
contract MutatedEquivalentDynamicArrayTypeCheck7 {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint[] a;
    uint length;
    uint z;
    uint m;
    uint lengthNew;
    uint[] c;
    uint nLength;
    uint lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        x++;
        length = 1;
        array = new ArrayItem[](2);
        array[0] = array[1];
        length++;
    }
}

pragma solidity ^0.8.0;
contract MutatedEquivalentDynamicArrayTypeCheck8 {
    struct ArrayItem { bool b; }
    ArrayItem[][] array;
    uint x;
    uint[] a;
    uint length;
    uint z;
    uint m;
    uint lengthNew;
    uint[][] c;
    uint nLength;
    uint lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        x++;
        length = 1;
        array = new ArrayItem[3][](2);
        array[0][0] = array[0][1];
        array[1][0] = array[1][1];
        length++;
    }
}
