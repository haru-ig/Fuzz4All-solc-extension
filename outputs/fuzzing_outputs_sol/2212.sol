pragma solidity ^0.8.0;
contract Mutater129 {
    uint128 public immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function add(uint128 x) public view returns (uint128) {
        return x;
    }
    function div(uint128 x, uint128 y) public view returns (uint128) {
        uint128 ret;
        if (y == 0) return 0;
        ret = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
}
