pragma solidity ^0.8.0;
contract MutatedBlock2Mutation83 {
    uint internal _var = 0;
    uint internal _another = 0;
    function test1(uint w1, uint w2, uint w3, uint w4, uint w5) public {
        _var = w1 * block.timestamp + w2 * block.timestamp + w3 * block.timestamp + w4 * block.timestamp + w5 * block.timestamp;
    }
    function test2(uint w1, uint w2, uint w3, uint w4, uint w5) public view returns (uint) {
        _var = w1 * block.timestamp + w2 * block.timestamp + w3 * block.timestamp + w4 * block.timestamp + w5 * block.timestamp;
        return _var;
    }
    function test3(uint w1, uint w2, uint w3, uint w4, uint w5) public {
        _var = w1 * block.timestamp + w2 * block.timestamp + w3 * block.timestamp + w4 * block.timestamp + w5 * block.timestamp;
    }
    function test4(uint w1, uint w2, uint w3, uint w4, uint w5) public view returns (uint) {
        return _var;
    }
}
