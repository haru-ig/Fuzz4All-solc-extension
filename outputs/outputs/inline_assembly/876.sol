pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a = 0;
    uint256 internal b ;
    uint256 internal internalVar;
    uint internal constant incrementDelay = 9000;
    uint256 count;
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
    function increment_A(uint256 amt) public returns(uint256) {
        a = a+amt;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        return a;
    }
    function increment_B(uint amt) public returns(uint) {
        b = b+amt;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + b;
        return b;
    }
    function increment_AandB(uint amt) public returns(uint256
