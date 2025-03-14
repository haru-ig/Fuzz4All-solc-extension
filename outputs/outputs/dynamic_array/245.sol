pragma solidity ^0.8.0;
contract C10 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function m(T memory x) public {
        x.s = m(x.s, m(x.s, x));
    }
}
