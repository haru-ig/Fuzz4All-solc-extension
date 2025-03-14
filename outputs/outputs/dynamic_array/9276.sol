pragma solidity ^0.8.0;
contract semanticEquivalentMutation7C {
    struct ArrayA {
     address x;
     uint256 y;
    }
    struct ArrayB {
     uint256 x;
     bool y;
     uint y2;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        ArrayA memory a;
        ArrayB memory b;
        bool t;
        bool zt;
        uint st;
        bool y2;
        bool xz;
    }
}
