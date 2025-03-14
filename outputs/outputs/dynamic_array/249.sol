pragma solidity ^0.8.0;
struct T { uint256 x; }
contract C9 {
    constructor(uint256 x) public {}
    function mutate(T memory x) public {
        x = T({s: m(x.s, x)});
        x = T({s: m(x.s, x)});
    }
    function m(uint256 y, T memory x) pure public returns (uint256) {
        return y + x.s;
    }
}
