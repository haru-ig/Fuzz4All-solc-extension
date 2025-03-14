pragma solidity ^0.8.0;
contract Mutater246 {
    uint256 public immutable _x;
    constructor(uint256 _x) {
        _x;
    }
    function div(uint256 x, uint256 y) public view returns (uint128) {
        uint128 ret;
        if (y == 0) return 0;
        ret = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
}
