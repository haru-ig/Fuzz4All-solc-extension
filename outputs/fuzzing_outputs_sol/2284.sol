pragma solidity ^0.8.0;
contract SemanticsCaller {
    uint256 public immutable x;
    constructor() {
        this.x = 2;
    }
    function add(uint256 x) internal view returns (uint256) {
        uint256 ret;
        if (x == 0) return 0;
        ret = (x - x / 2 + uint256(div(x + div(x, uint256(59)), uint256(35)))) / uint256(5);
        uint256 xd = (x + div(uint256(x3 / 5), uint256(59))) / uint256(5);
        return ((uint256(x2 % 1) == 1)? xd : ret * 2) * 2;
    }
}
