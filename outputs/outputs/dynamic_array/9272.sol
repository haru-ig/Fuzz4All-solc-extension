pragma solidity ^0.8.0;
contract semanticEquivalentMutation7B {
    struct ArrayA {
     bytes32[3] x;
     uint y;
    }
    struct ArrayB {
     bytes32 x;
     uint256 y2;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (bytes32)
    {
        bytes32 x;
        uint256 y;
        bool t;
        bool[] memory xx;
        uint zt;
        uint st;
        bool y2;
        bool xz;
    }
}
