pragma solidity ^0.8.0;
contract Test7a {
    uint256 _value = 123;
    uint256[] _mem;
    function check() public {
        _mem[0] = 1;
        _value = 1;
        _mem[100] = 42;
        _mem[0] = 2;
    }
}
