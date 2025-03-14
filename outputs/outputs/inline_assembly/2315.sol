pragma solidity ^0.8.0;
contract Computation
{
    uint public a;
    uint public b;
    constructor() {
        a = a + b++;
        a = a + b--;
        a = a + b++;
        a = a + b--;
        a = a + b++;
        a = a + b--;
        a = a + b++;
        a = a + b--;
    }
}
