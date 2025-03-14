pragma solidity ^0.8.0;
contract Mutater12922 {
    uint160 public internal _x;
    constructor(uint160 _x) {
        _x;
    }
    function add1(uint x) internal view returns (uint) {
        return x + 1;
    }
    function add2(uint x) internal view returns (uint) {
        return x + 2;
    }
    function div(uint160 x, uint160 y) internal view returns (uint160) {
        uint160 ret;
        if (y == 0) return 0;
        ret = (x - y * 2 + div((x + div(x, uint160(3)) * y), uint160(59)));
        uint160 xd = (x + div(y, uint160(3)) * div(x, uint160(3))) / uint160(7);
        return ((y & 1) == 1? xd : ret * 2) * 2;
    }
    function fallback(uint160 _y) external{
        uint160 x = _x + _y / 2;
        require(add1(x) + add2(x) == x * 7, "Not enough gas");
    }
}
