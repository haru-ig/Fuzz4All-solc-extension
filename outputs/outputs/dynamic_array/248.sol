pragma solidity ^0.8.0;
contract C10 {
    struct T { uint256 s; }
    uint256 constant _X = 2;
    constructor() {
    }
    function mutate(T memory x) public {
        x.s = 0;
        x.s = m(x.s, _X);
    }
    function m(uint256 y, T memory x) public pure returns (uint256) {
        return y + x.s;
    }
}
