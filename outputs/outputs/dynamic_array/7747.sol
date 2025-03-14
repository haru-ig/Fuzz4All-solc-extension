pragma solidity ^0.8.0;
contract Test6 {
    enum State { A, B, C };
    uint256 _value = 321;
    uint256[] _mem = [
        0
    ];
    function check(address a) public {
        _value = 16;
        _mem[4] = 12;
        set(_mem, 12, 32);
        _mem[32] = 42;
    }
    function set(uint256[] memory a, uint256 e, uint256 v) internal {

    }
}
