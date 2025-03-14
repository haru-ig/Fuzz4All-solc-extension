pragma solidity ^0.8.0;
contract c {
    mapping(uint => uint) a;
    uint _foo;
    function test(uint _a) public returns (uint) {
        _foo = _a;
        return a[_foo];
    }
}
