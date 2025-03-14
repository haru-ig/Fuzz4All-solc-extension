pragma solidity ^0.8.0;
contract C7 {
    struct T { uint256 s; }

    constructor(uint256 x) {}
    function mutate(T memory x) public {
        (x.s, x.s) = (x.s*x.s, x.s+x.s);
    }
}
