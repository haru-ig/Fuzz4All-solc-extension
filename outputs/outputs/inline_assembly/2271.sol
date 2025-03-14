pragma solidity ^0.8.0;
contract EpicProblem
{
    uint a;
    constructor() {
        uint b = a + 1;
        a = b;
    }
    function solve() public {
        a = a + 2;
    }
}
