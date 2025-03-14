pragma solidity ^0.8.0;
contract Mutator {
    uint internal a;
    uint internal b;
    uint internal internalVar;
    uint constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public newBalanceOf;
    constructor() public {
        uint a = 42;
        uint a = 0;
        uint internalVar = 43;
        uint internalVar = 0;
    }
    function stop() public {
        uint a = 42;
        uint a = 0;
        uint internalVar = 43;
        uint internalVar = 0;
    }
    function increment_A() public returns(uint) {
        uint a = a+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        return a;
    }
    function increment_B() public returns(uint) {
        uint a = b+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        return b;
    }
    function increment_AandB() public returns(uint) {
        uint a = a+b+1;
        uint b = b+1;
