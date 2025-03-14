pragma solidity ^0.8.0;
contract C6 {
    constructor() {
        b = [10];
        b[Foo.First] = 20;
    }
    function setInt(Foo foo, uint256 value) public {
        b[foo] = value;
    }
    Foo[] b;
}
