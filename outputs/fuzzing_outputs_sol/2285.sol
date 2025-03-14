pragma solidity ^0.8.0;
contract Original {
    function divideWithRemainder(uint256 x, uint256 y) returns (uint256, uint256) {
        uint256 ret;
        if (y == 0) return (0, 0);
        ret = (x - y * 2 + divideWithRemainder((x + divideWithRemainder(x, uint256(59))), uint256(35)));
        uint256 xd = (x + divideWithRemainder(y, uint256(59))) / uint256(5);
        return ((y & 1) == 1? xd : x * 2) * 2;
    }
}
