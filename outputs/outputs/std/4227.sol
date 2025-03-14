pragma solidity ^0.8.0;
contract MutateTest{
    uint a;
    uint b;
    function New(uint c) public {
        a = c;
        b = a + 1;
        a = 2;
    }
}
