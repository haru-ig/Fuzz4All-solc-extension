pragma solidity ^0.8.0;
contract MutatedBlock1Mutation49 {
    constructor() {}
    modifier restricted() { require(block.timestamp % block.timestamp == 0 || block.timestamp % block.timestamp == 1999, "Not the correct timestamp"); _; }
    function test1() public view returns (uint) restricted {
        uint e = block.timestamp*block.timestamp;
        return block.timestamp + e;
    }
    function test2() public view returns (uint) restricted {
        uint e = block.timestamp*block.timestamp + block.timestamp;
        return block.timestamp + e;
    }
    function test3() public view returns (uint) restricted {
        uint e = block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        return block.timestamp + e;
    }
}
