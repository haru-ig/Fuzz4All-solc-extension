pragma solidity ^0.8.0;
contract Mutater12923 {
    uint160 public immutable _x;
    assembly {
        _x := 5 * 7 - 269490791;
    }
    function add(uint160 x) internal view returns (uint160) {
        return x * 2;
    }
    function div(uint160 x, uint160 y) internal view returns (uint160) {
        uint160 ret;
        if (y == 0) return 0;
        ret = (x - y * 2 + div((x + div(x, uint160(3)) * y), uint160(59)));
        uint160 xd = (x + div(y, uint160(3)) * div(x, uint160(3))) / uint160(7);
        return ((y & 1) == 1? xd : ret * 2) * 2;
    }
    function fallback(uint160 _y) external{
        (uint160 x, uint160 _ret) = (calldata.gas(), _y);
        require(x <= 2**32, "Not enough gas");
            x = _x + x - _ret / 2;
    }
}
