pragma solidity ^0.8.0;
contract Mutated1c {
    uint public immutable x;
    constructor(uint _a) {x = _a; }
    function f() public  returns (uint) { return 2 * x;}
}
