pragma solidity ^0.8.0;


contract ComplexityTest {
uint _counter;
uint x = 5;

    function test() public {
        _counter = 0;
        uint _y = 0;
        uint _z = 0;
        uint result1;
        uint result2;
        uint result3;
        uint result4;
        uint result5;
        uint result6;


        x = a;
        result1 = a + b;
        result2 = a++ + b;
        _y = a + b;
        _z = a++ + b;
        result1 = a + b;
        result2 = a++ + b;
        _z = a + b;


        uint c = a + b;
        uint d = b + a;
        uint e = a + b * 2;
        uint f = a + b / 2;
        uint g = a / b + b;
        uint h = a % b;
        uint i = a ^ b;


        c = a * 2;
        d = a * b;
        e = a * 2 * b;
        f = b / a + a / b;
        g = a / b * b;
        h = a % b * 2;
        i = a * b * 4;


        c = a / 2;
        e = a / a + a
