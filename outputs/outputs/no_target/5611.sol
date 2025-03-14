pragma solidity ^0.8.0;
library O{
    uint constant x = 1;
    uint constant y = 2;
    function h(uint a, uint b, uint c) public pure returns (uint, uint, uint){
        check(b-42);
        return (a, b, c);
    }
    function check(uint v) public pure {
    }
}
