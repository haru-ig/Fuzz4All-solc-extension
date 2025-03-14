pragma solidity ^0.8.0;
contract C9 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function mutate(T storage x) public {
        x.s = m(x.s, x);
        x.s = m(x.s, x);
    }
    function m(uint256 y, T storage x) internal pure returns (uint256) {
        uint256 x2 = y + x.s;
        return x2;
    }
}
