pragma solidity ^0.8.0;
contract Mutator {
    uint internal a = 0;
    uint internal b ;
    uint internal internalVar;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    event Transfer(address indexed from, address indexed to, uint256 value);
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
    function increment_A() public returns(uint) {
        a = a+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        emit Transfer(msg.sender, address(uint(msg.sender)), 1);
        return a;
    }
    function increment_B() public returns(uint256) {
        b = a + b+1;
        newBalanceOf[address(uint(msg.sender))] = newBalanceOf[address(uint(msg.
