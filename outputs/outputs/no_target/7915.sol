pragma solidity ^0.8.0;
contract TestMutator {
    uint256 x;
    mapping (uint256 => uint256) y;
    mapping (uint256 => uint256) y_not_empty;
    enum Foo { A, B, C, D, E, F };
    mapping (uint256 => uint256) z;
    mapping (uint256 => uint256) w;
    function set(uint256 _value) public {
        x = _value ^ x;
    }
}
