pragma solidity ^0.8.0;
contract MutationExample {
    uint internal x;
    receive()
        external
        payable
    {
        x = x * 2;
    }
}
