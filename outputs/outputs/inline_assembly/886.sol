pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a = 0;
    uint internal constant incrementDelay = 9000;
    uint internal count;
    mapping (address => uint) public newBalanceOf;
    constructor() public {
        a = 42;
    }
    function stop() public {
        a = 0;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        return a;
    }
    function increment_AwhenZero() public {
        if (a == 0) {
            a = 1;
        } else {
            a = a+1;
            newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        }
    }
    function increment_AthenZero() public {
        a = 0;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
    }
    function increment_then_A() public returns(uint256) {
        for(uint i = 0; i < 1000000000; i++) {
            if (
