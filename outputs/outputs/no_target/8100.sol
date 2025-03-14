pragma solidity ^0.8.0;
contract Mixed {
    uint x;
    uint256 private y;
    constructor() {
        x = x_;
        y = y_ + x_;
    }
    function setY(uint128 p) {
        uint256 _y = p;
        y_ = _y + x_;
        x = (uint)(_y / 100);
    }
    function getY() constant returns (uint256 _y) {
        return y_;
    }
    uint private x_;
    uint private y_;
}
