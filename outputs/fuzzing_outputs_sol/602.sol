pragma solidity ^0.8.0;
contract MutateTest
{
    constructor()
    {}
    event FailEmit(string v);
    function func(uint x) payable external {
        FailEmit("hi");
        x = 1;
    }
}
