pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations7
{
    struct T
    {
        uint8 b;
        event Test(uint16 x, uint8 y);
    }
    T[] public b;
    constructor() {
        b.push(new T());
    }
    function Test()
    {
        for (uint16 i = 0; i < b.length; i++)
        {
            T memory t = b[i];
            b[i].b = 0;
            emit Test(i, t.b);
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations8
{
    struct A
    {
        uint8 a;
        mapping(uint8 => uint8) c;
        event Test(uint32 x, uint8 y);
    }
    A[] public b;
    constructor() {
        uint8 _a = 1;
        for(uint128 i = 0; i < _a; ++i)
        {
            b.push(new A());
        }
        for(uint128 i = 0; i < _a; ++i)
        {
            b[i].c[i] = 0;
            emit Test(i, i % uint8(_a));
        }
    }
}
