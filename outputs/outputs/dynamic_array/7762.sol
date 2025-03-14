pragma solidity ^0.8.0;
contract Test6a {
    struct Foo {
        uint256 bar;
        address[] baz;
    }
    Foo[] _mem;
    function check(uint256 i) public {
        _mem[i] = Foo(0,address[](0));
    }
}
