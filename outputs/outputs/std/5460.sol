pragma solidity ^0.8.0;
contract Mutate100 {
    uint8 initialBalance = 10;
    constructor(uint _initialBalance) {
        uint currentBlockIndex = block.number * (2 ** 160);
        uint32 random = uint32(keccak256(abi.encodePacked(currentBlockIndex))) % 100;
        initialBalance += random * _initialBalance;
        initialBalance -= _initialBalance * 100;
    }
}
