pragma solidity ^0.8.0;
contract SemanticEquivalenceMutated
{

    constructor() {
        SemanticEquivalentK7_.a = 1;
        SemanticEquivalentK7_.b = 2;
        SemanticEquivalentK7_.c = 1;
        SemanticEquivalentK7_.d = 0;
        a = 1;
        b = 2;
    }

    function getA(uint8 param) internal
    {
        getB(param);
    }

    function getB(uint8 param) internal
    {
        uint16 local = c;
        b = local;
        c = 0;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    uint8 a;
    uint8 b;

    constructor()
    {
    }

    fallback()
    {
    }

    receive()
    {
    }
}

contract FallbackTest
{

    constructor()
    {
        SolidityEquivalentK1_.a = 1;
        SolidityEquivalentK1_.b = 2;
    }

    fallback();
}

pragma solidity ^0.8.0;
address(new FallbackTest());
