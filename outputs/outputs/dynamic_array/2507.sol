pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_9ef7464f6f96cb2f869f04ffac35a72a2104b179
{
    struct ComplexStruct
    {
        uint32[2] a;
        uint32[2] b;
    }
    struct SimpleStruct
    {
        uint32[2] a;
    }
    function f(ComplexStruct memory _b) public {
        uint32[2] memory _a;
        _a[0] = _b.a[0];
        _a[1] = _b.a[1];
        uint32[2] memory _b;
        _b[0] = _b.b[0];
        _b[1] = _b.b[1];
    }
    function f(SimpleStruct memory _a) public {
        uint32[2] memory _a0;
        _a0[0] = _a.a[0];
        _a0[1] = _a.a[1];
        uint32[2] memory _a1;
        _a1[0] = _a.a[1];
        _a1[1] = _a.a[0];
    }
}
