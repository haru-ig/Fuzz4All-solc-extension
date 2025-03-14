pragma solidity ^0.8.0;
contract C10 {
    struct T { uint256 a; }
    constructor(uint256 x) {}
    function r(T memory x) public {
        x.a = m(x.a, x);
        x.a = m(x.a, x);
    }
    function m(uint256 y, T memory x) public pure returns (uint256) {
        return y * 2;
    }
}
