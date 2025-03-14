pragma solidity ^0.8.0;
contract semanticEquivalentMutation7B {
    struct ArrayA {
     bool x;
     uint256 y;
     ArrayB[] z;
    }
    struct ArrayB {
     uint256 x;
     bool y;
     uint y2;
     ArrayC[] v;
    }
    struct ArrayC {
     uint256 a;
     bool b;
     bool c;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x;
        uint y;
        bool t;
        bool[] memory xx;
        uint zt;
        uint st;
        bool y2;
        bool xz;
    }
}
