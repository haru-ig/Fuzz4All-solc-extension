pragma solidity ^0.8.0;
contract MutatedFabric {
    uint public x;
    uint public y;
    MutatedFabric() public {
        x += 2;
        y = 3;
    }
}
