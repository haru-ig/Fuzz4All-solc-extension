pragma solidity ^0.8.0;

library HelloWord
{
    function sayHi(uint32 x) public pure returns (uint32) { return x;  }
}

contract Mutant
{
    function(){   }
    require(false);
    function HelloWord.sayHi(uint32 x) public pure returns (uint32) { return x; }
}
