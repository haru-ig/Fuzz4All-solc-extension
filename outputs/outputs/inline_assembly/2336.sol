pragma solidity ^0.8.0;
contract Mutate
{
    uint public constant A = 1;
    uint public constant B = 1;
    uint mut public a;
    uint mut public b;
    constructor() {
    }
    function setA(uint x) public {
        a = a + x;
    }
}
