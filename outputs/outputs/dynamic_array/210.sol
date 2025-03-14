pragma solidity ^0.8.0;
contract C6 {
    enum Foo {
        First, Second
    }
    mapping (uint256 => uint256[2]) private b;
    constructor() {
        b[0][0] = 10;
        b[0][1] = 11;
    }
    function setInt(Foo foo, uint256[] memory values) public {
        b[1][0] = values[0];
    }
}
