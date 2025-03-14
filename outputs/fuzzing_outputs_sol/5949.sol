pragma solidity ^0.8.0;
contract Caller {
    function sum(int _x, int _y) pure internal returns (uint){
        uint x = (uint(_x)); uint y = (uint(_y)); return (x+y);
    }
    function main() public{
        uint a = sum(10,20); uint b = sum(10,20); assert (a + b == 30);
    }
}
