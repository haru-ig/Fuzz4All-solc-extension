pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample85 {
    struct Foo {
        uint8 a1;
        uint8 a2;
        uint8 a3;
        uint8 a4;
        uint8 a5;
        uint8 a6;
        uint8 a7;
        uint8 a8;
        uint8 a9;
        uint8 a10;
        uint8 a11;
        uint8 a12;
        uint8 a13;
        uint8 a14;
        uint8 a15;
        uint8 a16;
    }
    Foo memory foo = Foo(0);

    function foo() public {
        foo.a1 = 108;
        foo.a2 = 71;
        foo.a3 = 104;
        foo.a4 = 2;
        foo.a5 = 0;
        foo.a6 = 97;
        foo.a7 = 112;
        foo.a8 = 95;
        foo.a9 = 112;
        foo.a10 = 115;
        foo.a11 = 116;
        foo.a12 = 104;
        foo.a13 = 111;
        foo.a14 = 100;
        foo.a15 = 118;
        foo.a16 = 105;
    }

    function baz(int128 fooBar) public {
        foo.a1 = int8((fooBar >> 24) & 0xFF);
        foo.a2 = int8((fooBar >> 16) & 0xFF);
        foo.a3 = int8((fooBar >> 8) & 0xFF);
        foo.a4 = int8((fooBar >> 0) & 0xFF);
    }
}
