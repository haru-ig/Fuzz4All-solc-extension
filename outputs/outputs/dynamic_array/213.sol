pragma solidity ^0.8.0;
contract C5 {
    enum Foo {
        First, Second
    }
    mapping (uint256 => uint256) private b;
    Foo value;
    constructor() private {
        b[0] = 10;
    }
    function setInt(Foo foo, uint256 value) public {
        b[1] = value;
    }
}
