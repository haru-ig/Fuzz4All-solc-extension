pragma solidity ^0.8.0;
contract C7 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function mutate(T memory x) public {
        uint256 s;
        (s, x.s) = (s+x.s, s-x.s);
    }
}
