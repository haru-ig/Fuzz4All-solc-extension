pragma solidity ^0.8.0;
contract Mutater890 {
    function div(uint160 x, uint160 y) internal view returns (uint160) {
        uint160 ret;
        require(y!= 0, "Zero divisor");
        ret = x / y;
        uint160 xd = x / y;
        return ((y & 1) == 1? xd : ret) - ret * 2;
    }
    function fallback(uint160 _y) external{
        uint160 x = (_x * _y);
        if (x == 0) return;
        else require(x <= 2**32, "Not enough gas");
    }
}
