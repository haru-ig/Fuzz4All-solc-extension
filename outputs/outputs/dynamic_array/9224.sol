pragma solidity ^0.8.0;
contract semanticNotEquivalenceMutation {
    struct ArrayNotEquivalence{
        uint[] a;
        uint b;
    }
    function semanticNotEquivalent(ArrayNotEquivalence memory M)
    public
    pure
    returns (uint)
    {
        uint z;
        return M.a[z];
    }
}

pragma solidity ^0.8.0;
contract semanticNestedStruct mutationReturningStructInFunc {
    struct InnerStruct {
        uint b;
        uint c;
    }
    struct ReturningStruct {
        InnerStruct[] nestedStruct;
    }
    function semanticExample(
        ReturningStruct memory A,
        uint x,
        InnerStruct memory B)
        public
        pure
        returns (InnerStruct memory)
    {
        x = x + 1;
        return B;
    }
}

pragma solidity ^0.8.0;
contract semanticNestedContract {
    contract nestedExample {
    struct InnerStruct {
        uint b;
        uint c;
    }
    struct ReturningStruct {
        InnerStruct[] nestedStruct;
    }
    }
    function semanticExample(
        ReturningStruct memory A,
        uint x,
        InnerStruct memory B)
        public
        pure
        returns (InnerStruct memory)
    {
        uint z = x;
        x = x + 1;
        return A.nestedStruct[z].B;
    }
}
function testFunction() view public returns (uint a) {
    a++;
    return 2;
}
