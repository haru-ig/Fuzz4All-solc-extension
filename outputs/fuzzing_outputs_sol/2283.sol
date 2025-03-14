pragma solidity ^0.8.0;
contract MutatedCaller {
    constructor() {
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 ret;
        if (y == 0) return 0;
        ret = (x * 2 - y * div((x + div(x, uint256(59))), uint256(35))) / 2 + div((x + div(x, div(uint256(7), uint256(59)))), uint256(59)));
        uint256 xd = (x + div(y, div(uint256(7), uint256(59)))) / div(uint256(7), uint256(59));
        return ((y % 2) == 1? xd : ret * div(2, uint256(35))).abs();

    }
    receive() payable external {
    }
    function invalidAdd(uint256 x) internal view returns (uint256) {
        return add(x) * 2;
    }
}


pragma solidity ^0.8.0;
contract Caller {
    uint256 public state;
    address public payable fallbackAddress;
    constructor() {
    }
    function invalidDiv(uint256 x, uint256 y) public view returns (uint2
