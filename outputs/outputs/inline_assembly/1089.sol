pragma solidity ^0.8.0;

contract MutatedContract2 {
    string stateVar = "I love inline assembly!";
        assembly {
            mul(0x0000000000000000, 0x0000000000000000)
            sstore(0x42, 0x0000000000000000)
            sstore(0x45, 0x0001001001001001)
        }
        string memory output = stateVar + memoryAsString(stateVar, 6);
}
