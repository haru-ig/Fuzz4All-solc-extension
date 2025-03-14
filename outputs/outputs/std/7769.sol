pragma solidity ^0.8.0;
contract PrecededByStruct {
    struct Foo {
        uint x1;
    }
    struct Bar {
        uint x2;
    }
    function f(Foo memory foo) public returns (Bar memory) {
        return struct(foo.x1);
    }
}
