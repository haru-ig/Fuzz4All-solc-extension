pragma solidity ^0.8.0;
contract MutatedBlock2 {
    function test() public returns(uint) {
        string memory s = "Hi";
        uint x;
        x = block.number;
        x = block.timestamp;
        x = block.difficulty;
        x = block.gasLimit;
        x = block.gasUsed;
        return x;
    }
}
