pragma solidity ^0.8.0;
contract Mutate1 {
    uint public val;
    constructor() {
        val = 2;
    }
    function setvar1(uint num) public {
        val = num;
    }
    function usevar1() public {
        bool b;
        b = true;
        int256 i;
        i = 3;
    }
    }
