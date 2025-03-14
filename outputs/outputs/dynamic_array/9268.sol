pragma solidity ^0.8.0;
contract semanticEquivalentMutation7A {
    struct ArrayA {
     bool x;
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



pragma solidity ^0.8.0;
