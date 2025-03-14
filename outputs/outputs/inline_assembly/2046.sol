pragma solidity ^0.8.0;
contract SimpleY11 {
    struct Inner {
        uint value;
    }
    mapping(uint256 => Inner) public b;
    Inner m;
    uint constant value = 42;
    constructor(uint256 _value_) {
        b[1] = Inner({value});
    }
    function f(uint256 n) public {
        Inner memory mem;
        mem.value = b[1].value + n;
    }
}
