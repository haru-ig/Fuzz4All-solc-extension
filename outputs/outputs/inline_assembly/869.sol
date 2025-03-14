pragma solidity ^0.8.0;
contract Mutator{
	uint constant incrementDelay = 9000;
    uint256 internal a;
    uint256 internal b;
	constructor(){
    a = 42;
    a = 0;
    }
    function stop() public {
    a = 42;
    a = 0;
    }
    function increment_A() public returns(uint256){
    a = a+1;
    uint256 newBalanceOf =  newBalanceOf + a;
    return a;
    }
    function increment_B() public returns(uint){
    b = b+1;
    uint256 newBalanceOf = newBalanceOf + b;
    return b;
    }
    function increment_AandB() public returns(uint256){
    a = a+b+1;
    b = b+1;
    uint256 newBalanceOf = newBalanceOf + a+b;
    return a + b;
    }
 }
