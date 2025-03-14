pragma solidity ^0.8.0;
contract BitwiseXORZ {
    bytes10 foo = 0;
    bytes10 bar;
    bytes8 baz;
    bytes5 buz;
    bytes256 quuz;
    function f() public{
        foo = foo ^ "Hello";
        bar = bar ^ bytes10("World");
        baz = baz ^ "Hello World";
        buz = buz ^ bytes5("hello");
        quuz = quuz ^  "0xdbadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef";
    }
}
