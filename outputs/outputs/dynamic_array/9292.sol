pragma solidity ^0.8.0;
contract semanticEquivalentMutation11 {
    struct ArrayB {
     uint8 x;
    }
    struct StructB {
      ArrayB fArr;
    }
    function semanticEquivalentAfterMutation(StructB storage B)
    public
    pure
    returns (uint)
    {
        B.fArr.x = B.fArr.y;
        uint x = 3;
        uint y = 4;
        B.fArr.x = 2;
        bool x2 = true;
        return 1;
    }
}
