pragma solidity ^0.8.0;
contract Mutated_2_3a {
    uint x;
    constructor(uint a) public { x = a; }
    function f() public {
        x *= 3;
    }
}
