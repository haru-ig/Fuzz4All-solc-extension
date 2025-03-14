pragma solidity ^0.8.0;
contract Mutator2 {
    uint internal a = 0;
    uint8 internal b ;
    uint8 internal internalVar;
    uint internal constant incrementDelay_B = 9000;
    uint internal constant incrementDelay_A_internalVar = 9000;
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
        uint newBalanceOf = newBalanceOf + a;
        return a;
    }
    function increment_B() public {
        b = b+1;
        uint newBalanceOf = newBalanceOf + b;
    }
    function increment_AandB() public returns(uint256) {
        a = a+b+1;
        b = b+1;
        uint newBalanceOf = newBalanceOf + a + b;
        return a + b;
    }
    function increment_A_increment_B() public returns(uint256
