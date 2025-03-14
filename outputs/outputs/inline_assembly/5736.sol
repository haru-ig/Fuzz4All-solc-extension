pragma solidity ^0.8.0;
contract MutatedBlock2Mutation73 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint8 e = 2;
        uint16 f = 3;
        uint32 g = 4;
        uint64 h = 5;
        uint128 i = 6;
        uint256 j = 7;
        uint _ = block.timestamp + 1;
        return block.timestamp * block.timestamp;
    }
}
