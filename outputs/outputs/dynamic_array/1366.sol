pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck {
    struct ArrayItem { bool b; }
    ArrayItem[] array;
    uint x;
    uint length;
    uint m;
    uint lengthNew;
    uint[] b;
    uint nLength;
    constructor ( )
    {
        x = 0;
        m = 0;
        length = 1;
        z = 0;
        z++;

        length++;

        ArrayItem[] array2;
        array2.length = 2;
        array2[0].b = true;
        array2[1].b = false;
        array2[0].b = true;
        array2[1].b = false;
        array.push(array2[1]);
        z++;

        ArrayItem[] array3;
        array3.length = 2;
        array3[0].b = true;
        array3[1].b = false;
        array3[0].b = true;
        array3[1].b = false;
        array.push(array3[1]);
        z++;

        ArrayItem[] array4;
        array4.length = 2;
        array4[0].b = true;
        array4[1].b = false;
        array4[0].b = true;
        array4[1].b = false;
        array.push(array4[1]);
        length++;
    }
}
