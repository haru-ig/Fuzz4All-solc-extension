pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a = 0;
    uint256 internal b;
    uint256 internal internalVar=0;
    uint internal constant incrementDelay = 9000;
    uint256 count=0;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public newBalanceOf;
    constructor() public {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function stop() public {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function increment_A() public returns(uint256) {
        count = count + 1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a * count + incrementDelay > block.timestamp? block.timestamp : (newBalanceOf[msg.sender] + a * count + incrementDelay);
        return a*count;
    }
    function increment_B() public returns(uint) {
        b = count+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender
