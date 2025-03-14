pragma solidity ^0.8.0;
contract TestMutator {
    uint256 x;
    constructor () public {
        x = 0xdeadbeef;
    }
    function set(uint256 _value) public {
        x = _value ^ x;
    }
    function set2(uint256 _value) public {
        set(_value);
    }
}
