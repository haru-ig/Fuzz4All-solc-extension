pragma solidity ^0.8.0;
contract Solidity13To18 {
    struct MyStruct {
        uint a;
        uint2 b;
    }
    uint public a;
    uint public b;
    uint public maxA;
    uint public prevB;
    constructor() public {
        uint temp = 4;
        a = 3;
        b = temp;
        maxA = temp;
        prevB = b;
    }
    function myFunction(uint2 _amount) public {
        uint temp = 4;
        a = a + _amount;
        a = a + _amount;
        b = b + _amount;
        b = b + _amount;
    }
    function myFunction2(MyStruct memory m) public {
        uint temp = 4;
        a = a + m.a;
        a = a + m.a;
        b = b + m.b;
        b = b + m.b;
    }
}
