pragma solidity ^0.8.0;
contract Mutater1292 {
    uint160 public immutable _x;
    constructor(uint160 _x) {
        _x;
    }
    function add(uint160 x) internal view returns (uint160) {
        return x;
    }
    function div(uint160 x, uint160 y) internal view returns (uint160) {
        uint160 ret;
        if (y == 0) return 0;
        ret = (x + (y >> 1)) / y;
        uint160 xd = (x + (y + 1) >> 1) / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
    function fallback(uint160 _y) external{
        uint160 x = _x + _y;
        if (x == _x) require(false, "Mutter129");
        require(x <= 2**32, "Not enough gas");
    }
}
