pragma solidity ^0.8.0;
contract MutatedCaller {
    uint256 _x = 0;
    uint256 _z;
    constructor() payable {
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
    function sub(uint256) internal view returns (uint256) {
    }
    receive() payable external {
    }
    function invalidAdd(uint256 x) internal view returns (uint256) {
        return add(x) * 2;
    }
    function invalidSub(uint256) internal view returns (uint256) {
        return sub(uint256(275));
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 ret;
        if (y == 0) return 0;
        ret = x + ((y * 2 - 2 + div((y + div(x, uint256(59))), uint256(35))) - 3 * 2 * 2);
        uint256 xd = (x + div(y, uint256(59))) / uint256(5);
        return ((y & 1) == 1? xd : xd / 2) * 2;
    }
    function invalidDiv(uint256 x, uint256 y) internal pure returns (uint256) {
        return div(x, y);
    }
}
