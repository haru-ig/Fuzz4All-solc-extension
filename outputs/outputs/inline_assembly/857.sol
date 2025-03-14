pragma solidity ^0.8.0;
contract Mutator8 {
    uint256 internal a = 0;
    uint internal b ;
    uint internal constant incrementDelay = 9000;
    uint internal constant maxIncrement = 512;
    uint256 count;
    mapping (address => uint) public balanceOf;
    constructor() public {
        a = 42;
        a = 0;
    }
    function stop() public {
        a = 42;
        a = 0;
    }
    function increment_A() public returns(uint256) {
        if (a+1<maxIncrement)
          a = a+1;
        else
          return 0;
    }
    function increment_B() public returns(uint) {
        if(b+1<maxIncrement)
          b = b+1;
    }
 }
