pragma solidity ^0.8.0;
contract semanticEquivalentMutation3 {
    struct ArrayMutability{
        uint[3] array;
        uint[3][10] storage foo;
        uint foo2;
        uint arrayWithVariableSize;
        uint[3][3] array;
        uint[6][2] some;
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint z;
        uint[3] memory x;
        uint[10][1] memory y;
        uint[3] memory z;
        uint[2][2] memory z;
        z = A.arrayWithVariableSize;
        A.array[1] = A.array[3];
        A.arrayWithVariableSize = 0;
        a = A.array.length;
        b = a;
        uint yz = A.some[0][1];
        A.some[0] = A.some;
        a = A.some.length[y];
        b = yz;
        z = A.array[0][1];
        A.array[0] = A.arrayWithVariableSize;

    }
}
