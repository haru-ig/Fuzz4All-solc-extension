pragma solidity ^0.8.0;
contract Mutator {
    uint256 public a;
    uint256 public b;
    uint256 public internalVar;
    uint uint256 public constant incrementDelay = 25;
    uint256 public count;
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
        a = a+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        return a;
    }
    function increment_B() public returns(uint) {
        b = b+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + b;
        return b;
    }
    function increment_AandB() public returns(uint256) {
        a = a+b+1;
