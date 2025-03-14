pragma solidity ^0.8.0;
contract MutatedBlock2Mutation73 {
    uint private _var = 1;
    function test1() public view returns (uint) {
        uint256 e = block.timestamp*block.timestamp;
        return block.timestamp + e;
    }
    function test2() public view returns (uint) {
        uint256 e = block.timestamp*block.timestamp + block.timestamp;
        return block.timestamp + e;
    }
    function test3() public view returns (uint) {
        uint256 e = block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        return block.timestamp + e;
    }
}
