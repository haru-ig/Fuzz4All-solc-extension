pragma solidity ^0.8.0;
library O{
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint){
        check(b-42);
        return (a, b, c);
    }
    function check(uint v) internal pure {
    }
}
