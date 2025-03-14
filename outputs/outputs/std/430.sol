pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function test(uint x) returns (uint) {
        test = x;
        return(test);
    }
}
