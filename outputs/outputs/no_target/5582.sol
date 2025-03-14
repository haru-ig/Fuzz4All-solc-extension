pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        c = b + 32;
        c = b > 45 * a? 0 : b / 54;
        return (a, c);
    }
}
