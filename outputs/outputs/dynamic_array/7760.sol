pragma solidity ^0.8.0;
contract Test6a {
    uint256 _value = 321;
    uint256[] _mem;
    function check(uint256 i) public {
        _mem[0] = 1;
        _mem[100] = i + 42;
        _mem[0] = 2;
    }
}
