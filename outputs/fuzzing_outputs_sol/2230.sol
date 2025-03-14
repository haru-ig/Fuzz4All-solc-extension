pragma solidity ^0.8.0;
contract Mutater12922 {
    uint160 public immutable _x;
    constructor(uint160 _x) {
        _x;
    }
    function add(uint160 x) internal view returns (uint160) {
        return x * 2;
    }
    function div(uint160 x, uint160 y) internal view returns (uint160) {
        uint160 ret;
        if (y == 0) return 0;
        ret = (x - y * 2 + div((x + div(x, uint160(59))), uint160(35)));
        uint160 xd = (x + div(y, uint160(59))) / uint160(5);
        return ((y & 1) == 1? xd : ret * 2) * 2;
    }
    function fallback(uint160 _y) external{
        uint160 x = _x + _y / 2;
        if (x == _x) require(false, "Mutter129");
        require(x <= 2**32, "Not enough gas");
    }
}
