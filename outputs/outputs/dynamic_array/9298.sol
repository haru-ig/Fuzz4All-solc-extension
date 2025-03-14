pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    struct ArrayB {
     uint8 x;
     uint256 y;
    }
    struct ArrayC {
     uint8 a;
     uint8 b;
     uint8 c;
     uint16 d;
    }
    function semanticEquivalentAfterMutation(ArrayB memory B, ArrayC memory C)
    public
    pure
    returns (uint)
    {
        uint x = 0;
        uint y = 1;
        C.a = 2;
        return 2;
    }
}
