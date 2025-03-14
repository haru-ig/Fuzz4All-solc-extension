pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a = 0;
    uint internal internalVar;
    uint256 count;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public newBalanceOf;
    constructor() public {
        a = 42;
        internalVar = 43;
        a = 0;
        internalVar = 0;

        if (internalVar == 0) {
            internalVar = 1;
        }
    }
    function stop() public {
        a = 42;
        a = 0;
        a = 22;



        internalVar = 1;
        internalVar = 0;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
        newBalanceOf[msg.sender] = newBalanceOf[msg.sender] + a;
        return a;
    }
    function increment_AandB() public returns (uint2
