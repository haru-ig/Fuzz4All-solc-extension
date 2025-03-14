pragma solidity ^0.8.0;
contract Test6b {
    uint256 _value = 321;
    uint256[] _mem = [
        0
    ];
    function check(address a) public {
        _mem[4] = 1;
        _value = 1;
        _mem[100] = 42;
        _mem[4] = 1;
    }
}
