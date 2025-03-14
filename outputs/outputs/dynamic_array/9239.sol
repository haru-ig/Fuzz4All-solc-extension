pragma solidity ^0.8.0;
contract semanticEquivalentMutation5 {
    struct ArrayMutability{
        uint z;
        uint[3] array;
    }
    function semanticEquivalent(ArrayMutability memory A) public
    pure
    returns (uint)
    a1A
    {
        uint z;
        (uint a, uint b) = A.z;
    }
    function semanticEquivalent2(ArrayMutability memory A) public
    pure
    returns (uint)
    b1B
    a3A
    {
        uint z = A.z;
        (uint a, uint b) = A.z;
    }
    function semanticEquivalent3(uint _x, uint _y) public
    pure
    returns (uint)
    c1C
    {
        uint z = 0;
    }
    function semanticEquivalent4(ArrayMutability memory A) public
    pure
    returns (uint)
    d1D
    {
        uint[] memory x = (A.array);
        uint z = ((uint)x.length);
        for (uint i = 0; i < 10; i++) {
            x[i] = 1;
        }
    }
}
