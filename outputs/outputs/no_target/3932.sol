pragma solidity ^0.8.0;
contract C {
    uint public x;
    constructor(uint _x) public {
         x = _x;
    }
    function test() public {
         x = 2^255 - x;
    }
}
