pragma solidity ^0.8.0;
contract Solidity3 {
    mapping (address=>bool) map;
    uint public x;
    constructor() public {
       x = 1;
    }
    function test() public {
       x = 1;
       map[msg.sender] = true;
    }
}
