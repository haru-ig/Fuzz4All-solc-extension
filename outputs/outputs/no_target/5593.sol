pragma solidity ^0.8.0;
 contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        check(b - a);
        c = b / 54;
        return (a, c);
    }
    function check(uint v) internal pure {
    }
}
