pragma solidity ^0.8.0;
contract C9 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function mutate(T memory x) public {
        x.s = m(x.s, x);
        x.s = m(x.s, x);
    }
    function m(uint256 y, T memory x) public pure returns (uint256) {
        return m2(y, x);
    }
    function m2(uint256 y, T memory x) internal pure returns (uint256) {
        return y + x.s;
    }
}
