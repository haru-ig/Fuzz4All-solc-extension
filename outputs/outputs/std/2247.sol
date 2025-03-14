pragma solidity ^0.8.0;
contract MutatedQ5 {
    uint x;
    constructor(){
        x = 1;
    }
    function add() public {
        uint y = x = 9;
    }
}
