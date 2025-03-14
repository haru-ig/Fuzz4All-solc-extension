pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        a = x+a;
        b = x+b;
        c = a+b;
        c = a-b;
        a = b+x;
        a = b-x;
        return (a, c);
    }
}
