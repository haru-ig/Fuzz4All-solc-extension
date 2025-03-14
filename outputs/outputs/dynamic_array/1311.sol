pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck4 {
    struct ArrayItem { bool b; }
    ArrayItem public array[2];
    ArrayItem public b1;
    bool a = true;
    uint[] memory array2;
    modifier onlyArray1Modifier
    {
        if (a) {
            array2.push(b1.b);
        }
    }
    constructor ()
    {
        array2.push(false);
        a = false;
        b1 = ArrayItem(false);
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck5 {
    struct ArrayItem { bool b; }
    ArrayItem public b1;
    ArrayItem[] public a2;
    constructor ()
    {
        b1 = ArrayItem(false);
        a2.push(b1.b);
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    ArrayItem[] protected a2;
    ArrayItem public b1;
    modifier onlyArray1Modifier
    {
        if (a2[0].b) {
            b1 = ArrayItem(true);
        }
    }
    constructor ()
    {
        b1 = ArrayItem(false);
        a2 = [a2, b1];
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck7 {
    struct ArrayItem { bool b; }
    ArrayItem protected a2;
    ArrayItem public b1;
    modifier onlyArray1Modifier
    {
        if (a2[0].b) {
            b1 = ArrayItem(true);
        }
    }
    constructor ()
    {
        a2.push(b1.b);
    }
} */
