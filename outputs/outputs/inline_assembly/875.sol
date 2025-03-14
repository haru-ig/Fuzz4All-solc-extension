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
    function increment(byte x) public returns(uint256) {
        if (x < 1) x = 1;
            a = a+x;
        balanceOf[msg.sender] = balanceOf[msg.sender] + a;

    return a;
    }
    function increment_B() public returns(uint) {
        b = b+1;
        balanceOf[msg.sender] = balanceOf[msg.sender] + b;
