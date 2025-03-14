pragma solidity ^0.8.0;
contract Computation
{
    uint public a;
    uint public b;
    mapping(uint => uint) public x;
    constructor() {
        a = 10;
        b = 2;
    }
    function multiply() public {
        uint x = a;
        uint sum = b * x[b];

        x[sum] = b * x[sum];
        a = a * x[sum];
    }
    function setB(uint x) public {
        b = x;
    }
}
uint[256];
uint[256];
