pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayTypeCheck8 {
    struct ArrayItem { bool b ; }
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
    constructor (bool v)
    {
        x = 0;
        if(v == true)
        {
            m = 0;
            length = 1;
            z = 0;
            z++;
            a = new uint[](2);
            a[0] = 0;
            a[1] = 0;
            length++;
            ArrayItem[] b = new ArrayItem[](20);
            lengthNew = 10;
            lengthNew++;
        }
        else
        {
            m = 0;
            length = 2;
            z = 0;
            z++;
            a = new uint[](20);
            length++;
            ArrayItem[] b = new ArrayItem[](length);
            lengthNew = 10;
            lengthNew++;
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayTypeCheck9 {
    struct ArrayItem { bool b ; }
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
    ArrayItem[] c;
    ArrayItem[] d;
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
        g();
        length++;
    }
    function g()
    {
        ArrayItem[] b = new ArrayItem[](20);
        lengthNew = b.length;
        lengthNew++;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayTypeCheck10 {
    struct ArrayItem { bool b ; }
