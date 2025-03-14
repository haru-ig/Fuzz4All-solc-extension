pragma solidity ^0.8.0;
contract Test6 {
    uint256 _value = 321;
    uint256[] _mem;
    function check(address a) public {
        _mem[100] = 12;
        _value = 16;
        _mem[4] = 42;
        _mem[200] = 42;
    }
}
