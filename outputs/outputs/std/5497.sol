pragma solidity ^0.8.0;
contract Mutate10 {
    uint a;
    function changeA() public {
        a = 1e1;
    }
    function setA(uint _a) public {
       a = _a;
    }
 }
