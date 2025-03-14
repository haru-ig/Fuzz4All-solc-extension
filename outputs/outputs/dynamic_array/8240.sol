pragma solidity ^0.8.0;
contract MutatedSolidity2 {
    uint public x;
    uint public y;
    uint public z;
    mapping (address => uint) myStorage;
    constructor() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
    modifier withModifyX() {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
        x = x + y + z;
        myStorage[msg.sender] = 3;
        _;
    }
    function modifyX() public withModifyX { }
    contract MutatedSolidity3 {
    constructor() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
    modifier withModifyX() {
        x = x + y + z;
        myStorage[msg.sender] = 3;
        _;
    }
    function modifyX() public withModifyX { }
    function test() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
}}
