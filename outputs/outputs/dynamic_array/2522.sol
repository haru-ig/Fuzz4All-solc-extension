pragma solidity ^0.8.0;
contract SemanticEquality_ArrayComparisons
{
    uint[] public a;
    constructor() {
        uint d;
        d = a[0];
        uint dCompare = a[1];
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_StructMutations
{
    struct Person {
        string name;
    }
    uint[] public p;
    constructor() {
        Person storage p = p[1];
        p.name = "Joe";
        uint b;
        b = p.name;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays
{
    uint[] public a;
    constructor() {
        uint b;
        b = a[1];
    }
}
