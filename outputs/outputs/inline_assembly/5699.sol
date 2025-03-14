pragma solidity ^0.8.0;
contract MutatedBlock9Mutation5 {
    uint public _var = 1;
    uint x;
    function test() public returns(uint) {
        uint y;
        uint z;
        for (uint i=0; i<10; i++) {
            block.number;
            block.timestamp;
            block.difficulty;
            block.gasLimit;
            block.gasUsed;
            block.blockhash(0);
            block.blockhash(1);
            blockhash(uint _number);
            blockhash(uint _number, uint _timestamp);
            blockhash(uint _number, uint _timestamp, uint _difficulty);
            blockhash(uint _number, uint _timestamp, uint _difficulty, uint _gasLimit);
            blockhash(uint _number, uint _timestamp, uint _difficulty, uint _gasLimit, uint _gasUsed);
            blockhash(uint _number, uint _timestamp, uint _difficulty, uint _gasLimit, uint _gasUsed, uint _blockhash);
            blockhash(uint _number, uint _timestamp, uint _difficulty, uint _gasLimit, uint _gasUsed, uint _blockhash, bytes _blockhashPrefix);
            blockhash(uint _number, uint _timestamp, uint _difficulty, uint _gasLimit, uint _gasUsed, uint _blockhash, bytes _blockhashPrefix, bytes _blockhashSuffix);
        }
        x = block.timestamp;
    }
}
