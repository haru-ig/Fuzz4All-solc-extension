pragma solidity ^0.8.0;
contract C9 {
    constructor(uint256 x) {}
    function mutate(uint256 s, T memory x) public {
        uint256 y;
        y += s;
        y -= m(s);
        x.s += x;
    }
    function m(uint256 s) public pure returns (uint256) {
        s += 8;
        return s;
    }
    function m2(uint256 s) internal pure returns (uint256) {
        return (s - m(s)) * 7;
    }
}
