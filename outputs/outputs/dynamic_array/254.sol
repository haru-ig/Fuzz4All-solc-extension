pragma solidity ^0.8.0;
contract C10 {
    struct T { uint256 s; }
    T memory x;
    constructor(uint256 x_) public {
        x.s = m1(x_.s, x_);
        x.s = m2(m1(0, x_.s, 0), x_);
    }
    function m1(uint256 y, T memory x_) public pure returns (uint256) {
        return y + x_.s;
    }
    function m2(uint256 y, T memory x_) internal pure returns (uint256) {
        return y + x_.s;
    }
}
