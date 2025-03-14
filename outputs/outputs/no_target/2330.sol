pragma solidity ^0.8.0;
contract mutation0b64p
{
    function mod(int x, int y) private pure returns (int) {
        uint56 xc = uint56(x);
        uint56 yc = uint56(y);
        return x >= 0
                  ? y >= 0? xc * y  : xc
                            : -yc * (xc % (y + 1));
    }
    function mod64(uint64 a, uint64 b) internal pure returns (uint64) {
        return mod(a, b);
    }
}
