pragma solidity ^0.8.0;
contract MutationSemanticsCaller {
    mapping(uint32 => uint256) internal x;
    fallback() external {
        uint32 x1 = 0x12345678;
        uint256 x2 = 0x1234567890123456;


        x[1] += msg.data.length;
    }
}
