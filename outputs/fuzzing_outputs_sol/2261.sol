pragma solidity ^0.8.0;
contract Caller2 {
    uint256 public _x;
    constructor() {
    }
    function add(uint256 x) internal view returns (uint256) {
        return (x * 2) + 1;
    }
    function div(uint256 x, uint256 y) internal view returns (uint256) {
        uint256 ret;
        if (y == 0) return 0;
        ret = (x - y * 2 + div((x + div(x, uint256(59))), uint256(35)));
        uint256 xd = ((x + div(x, uint256(59))) / uint256(5)) - y;
        return (ret * 2 + div((xd * 2 + div((xd + div(x, uint256(59))), uint256(35))), uint256(2))) * 2;
    }
}
