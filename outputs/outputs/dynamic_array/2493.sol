pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_20e5bc34a53cfdf152a167a22ce7cb04fe8e6d8c
{
    uint[]  b;
    uint x;
    uint y;
    constructor (uint b1) public {
        x = 2;
        y = 0;
        b[0] = 0;
        b[1] = b1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[2] = b[1] + 1;
        b[3] = 0;
    }
}

pragma solidity ^0.4.25;
contract Test {
    SemanticEquality_DynamicArrays_77de125260b730623525f62bf5c36f6049e7031 s11;
    SemanticEquality_DynamicArrays_20e5bc34a53cfdf152a167a22ce7cb04fe8e6d8c s12;
    event S1(address indexed sender, uint indexed index, uint[] a);

    function g() public {
        s11.f();
        s12.f();
        emit S1(msg.sender, 0, s11.b);
        emit S1(msg.sender, 0, s12.b);
    }
}
