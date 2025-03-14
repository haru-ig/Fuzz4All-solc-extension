pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrayAbiReencodingBug_mod3{
        uint[] memory memoryData;
        constructor () public {
            uint32[] memory memoryData = new uint32[](10);


        }
}
