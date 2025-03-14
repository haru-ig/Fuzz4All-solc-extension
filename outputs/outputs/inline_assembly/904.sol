pragma solidity ^0.8.0;
contract Mutator {
    uint256 public a;
    uint256 public b;
    uint256 public c ;
    uint256 public internalVar;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public newBalanceOf;
    constructor() public {
        a = 42;
        b = 42;
        c = 42;
        internalVar = 43;
        internalVar = 0;
    }
    function stop() public {
        a = 42;
        b = 42;
        c = 42;
        internalVar = 43;
        internalVar = 0;
    }
    function increment_AandC() public returns(uint256) {
        a = a + b + c + 1;
        c = c + 1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a + c;
        return a + c;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
        newBalanceOf[msg.sender] = new
