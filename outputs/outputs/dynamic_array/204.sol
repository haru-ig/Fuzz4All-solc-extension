pragma solidity ^0.8.0;
contract C5 {
    enum Foo {
        First, Second
    }
 mapping (Foo => uint256) internal b;

    constructor() {
        b[Foo.Second] = 20;
    }
    function setInt(Foo foo, uint256 value) public {
        b[foo] = value;
    }
}
