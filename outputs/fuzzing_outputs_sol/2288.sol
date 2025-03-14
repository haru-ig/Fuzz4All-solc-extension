pragma solidity ^0.8.0;
library MutatedCaller {
    function add(uint256 x) internal pure returns (uint256) {
        return x + 2;
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 temp;
        uint256 ret;
        if (y == 0) return 0;
        temp = (x - y * 2 + div((x + div(x, uint256(59))), uint256(35)));
        uint256 xd;
        xd = (x + div(y, uint256(59))) + (x + div(temp, uint256(5)) + 3);
        return ((y & 1) == 1? xd : temp * 2 + 2) * 2;
    }
    receive() payable external {
    }
}
