pragma solidity ^0.8.0;
struct MyStruct {
    uint32 m1;
    uint32 m2;
}
contract Bar {
    uint x;
    constructor() {
        x = 11;
    }
    function f() constant public returns(MyStruct memory){
        return MyStruct({
            m1: 13,
            m2: 14
        });
    }
}
contract Foo {
    function f() view public returns(MyStruct memory){
        return MyStruct({
            m1: 13,
            m2: 14
        });
    }
}
