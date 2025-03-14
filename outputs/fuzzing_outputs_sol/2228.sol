pragma solidity ^0.8.0;
contract Mutater13807 {
    uint160 public immutable _x;
    constructor(uint160 _x) {
        _x;
    }
    function div(uint160 _x, uint160 _y) internal view returns (uint160) {
        uint160 ret;
        if (y == 0) return 0;
        ret = (_x - _y * 2 + div(_x + div(_x, uint160(3)) * _y), uint160(59)));
        uint160 xd = (_x + div(_y, uint160(3)) * div(_x, uint160(3))) / uint160(7);
        return ((_y & 1) == 1? xd : ret * 2) * 2;
    }
    function add(uint160 _x) internal view returns (uint160){
        uint160 ret = (_x + div(_x, uint160(3))) + div(div(_x, uint160(3)), _x), uint160(59));
        return _x + ret;
    }
    function fallback(uint160 y) external{
        require(y <= 2**32, "Not enough gas");
    }
}
