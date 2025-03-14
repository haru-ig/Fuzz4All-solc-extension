pragma solidity ^0.8.0;
contract M1 {
    uint16 public y;
    bool public z;
    constructor (uint16 _y, uint16 _z) public {
        set(1, _y, _z);
    }
    function set (uint16 _k, uint16 _y, uint16 _z) public {
        y = _y; x[_k] = true; z = _z;
    }
    function test (uint16 _k) public view returns (bool) {
        return x[_k];
    }
}
