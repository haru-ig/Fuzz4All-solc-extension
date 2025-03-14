pragma solidity ^0.8.0;
contract D2 {
    mapping(uint256 => uint256) public store;

    function f1() public {
        store[0xDEAD] = 1;
    }
    constructor(){

    }
}
