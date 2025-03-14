pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_f508f3a884a42a4f881e869707e666799d7c0f03
{
    uint8[]  b;
    uint x;
    uint y;
    constructor (uint b1) public {
        x = 2;
        y = 0;
        b[0] = b1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[7] = b[0] + 1;
    }
}

pragma solidity 0.8.0;
contract DynamArraysValidationTest {
    function f0() public { }
    function f1() public { }
    constructor () public {
        f0();
        f1();
    }
    function test_dynamarrays_0() public {
        SemanticEquality_DynamicArrays_77de125260b730623525f62bf5c36f6049e7031 obj;
        obj.f0();
        obj.f1();
    }
    function test_dynamarrays_1() public {
        SemanticEquality_DynamicArrays_f508f3a884a42a4f881e869707e666799d7c0f03 obj;
        obj.f0();
        obj.f1();
    }
}

pragma solidity ^0.8.10;
contract ArraysCopyTests {
    uint a;
    uint[10] b;
    uint[10] c;
    uint[10] d;
    uint[10] e;
    uint[10] f;
    uint[10] g;
    uint[10] h;

    function f() public {
        a = 1;
        b[0] = 10;
        c[0] = 10;
        d[0] = 10;
