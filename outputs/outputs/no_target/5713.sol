pragma solidity ^0.8.0;
contract Bar {
    uint12 y;
    Baz x;
    uint public z;
    function Bar(uint y, Baz x, uint z) {
        this.y = y;
        this.x = x;
        this.z = z;
    }
    function baz(uint) external returns(uint) {
        return this.x.y;
    }
}
contract Foo {
    Bar x;
    function Foo(Bar x) public {
        this.x = x;
    }
    function bar(uint) external {
        return this.x.baz(this.x.y);
    }
}
