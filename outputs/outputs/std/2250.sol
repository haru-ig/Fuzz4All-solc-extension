pragma solidity ^0.8.0;
contract MigratedQ6 {
    uint x;
    constructor(){
        x = 1;
    }
    function add() public {
        x = x + 1;
    }
}
