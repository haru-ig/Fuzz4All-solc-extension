pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_5a50ca3c2ef64a0176e96ee47506806047349f96
{
    struct TestStruct
    {
        uint8 valuea;
    }

    uint8[2] x;
    TestStruct y;
    TestStruct z;
    function f() public view returns(bool) {
        x[0] = 1;
        x[1] = 2;
        y.valuea = 3;

        x[0] = x[0] + 1;
        x[0] = x[0] + y.valuea;

        return true;
    }
}
