pragma solidity ^0.8.0;
contract Caller {
    uint256 public _x;
    constructor() {
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 ret;
        if (y == 0) return 0;
        ret = (x - y * 2 + div((x + div(x, uint256(59))), uint256(35)));
        uint256 xd = (x + div(y, uint256(59))) / uint256(5);
        return ((y & 1) == 1? xd : ret * 2) * 2;
    }
    function invalidAdd(uint256 x) internal view returns (uint256) {
        return add(x);
    }
    fallback() external payable {
        _x += add(div(invalidAdd(invalidAdd(invalidAdd(invalidAdd(invalidAdd(invalidAdd(0x20))))))));

    }
    receive() external payable {
    }
}
