pragma solidity ^0.8.0;
contract C9 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function mutate(T memory x) public {
        uint256 s;
        s += m(x.s, x);
        s -= m2(x.s, x);
    }
    function m(uint256 y, T memory x) public pure returns (uint256) {
        return y + x.s;
    }
    function m2(uint256 y, T memory x) internal pure returns (uint256) {
        return y + m(x.s, x);
    }
}
