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

    function increment_A() public returns(uint256) {
        b = a+b+1;
        a = a + incrementDelayed(msg.sender) + b;
        newBalanceOf[msg.sender] = newBalanceOf[msg]Of[msg.sender] + a;
        return a;
    }
    function increment_B() public returns(uint256) {
        b = a+b+1;
        b;
        a = a + incrementDelayed(msg.sender) + b;
        newBalanceOf[msg.sender] =
