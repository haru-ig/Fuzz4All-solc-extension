pragma solidity ^0.8.0;
contract C6 {
    mapping (Foo => uint256) public b;
    C5 c5 = new C5();
    constructor() {
        uint256 x = 1;
        b[Foo.Second] = x;
        c5.setInt(Foo.First, x);
        b[Foo.Second] = 20;
    }
    function setInt(Foo foo, uint256 value) public {
        b[foo] = value;
    }
}
