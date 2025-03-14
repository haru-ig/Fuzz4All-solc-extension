pragma solidity ^0.8.0;
contract semanticEquivalentMutation5B is semanticEquivalentMutation4B {

    struct ArrayA {
     bool x;
     bool[] isPresent;
     bool isPresent2;
     bool[] isNotPresent;
     bool[] isNotPresent2;
    }
    function semanticEquivalent(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x;
        bool t;

        uint zt;
        uint256 st;
        uint xz;
    }
}
