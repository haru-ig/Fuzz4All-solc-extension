pragma solidity ^0.8.0;
contract TestMutator2 {
    uint256 x;
    constructor () public {
        x = 0xdeadbeef;
    }
    function set(uint256 _value) public {
        x = x + x * 100;
    }
}
