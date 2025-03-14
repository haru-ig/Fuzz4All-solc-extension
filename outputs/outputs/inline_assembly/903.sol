pragma solidity ^0.8.0;
contract Mutator{
    uint256 internal a = 0;
    uint256 internal b;
    uint256 internal internalVar;
    uint internal constant incrementDelay = 9000;
    uint256 count;

    uint256 public balanceOf;
    address public owner;

    constructor() public {
        owner = msg.sender;
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    modifier only_owner(){
        require(msg.sender==owner, "Must be Owner");
        _;
    }
    function stop() public only_owner{
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
        balanceOf = balanceOf + a;
        return a;
    }
    function increment_B() public returns(uint) {
        b = b+1;
        balanceOf = balanceOf + b;
        return b;
    }
    function increment_AandB() public returns(uint256) {
        a = a+b+1
