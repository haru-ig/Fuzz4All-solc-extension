pragma solidity ^0.8.0;
contract Caller {

}
contract Caller {
    uint256 public _x;
    constructor() {
        _x = 5;
    }

    function add(uint256 x) internal pure returns (uint256 y) {
        y = _x + x;
    }

    function div(uint256 x, uint256 y) internal pure returns (uint256 y1) {
        uint xd = x + div(x, uint256(59));
        _x = (x + div(y, uint256(59))) / uint256(5);
        _x = xd;
    }

    function invalidAdd(uint256 x) internal view returns (uint256) {
        return add(x);
    }
}
