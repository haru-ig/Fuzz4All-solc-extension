pragma solidity ^0.8.0;
contract MutateHelloWorld {
    uint constant max_uint = ^uint(0);
    function changeMax() public pure {
        max_uint = 11;
    }
}
