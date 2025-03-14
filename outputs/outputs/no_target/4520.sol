pragma solidity ^0.8.0;
contract D{
    constructor() {
    }
    function add(uint a, uint b) public pure returns (uint c){
        c = a + b;
    }
    function sub(uint a, uint b) public pure returns (uint c){
        c = a - b;
    }
}
