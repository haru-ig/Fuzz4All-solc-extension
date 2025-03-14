pragma solidity ^0.8.0;
contract Test6c {
    uint256[2] _mem;
    uint256 _value;
    function check(address a) public {
        _mem[0] = 1;
        _value = 1;
        _mem[100] = 42;
        _mem[0] = 2;
    }
}
