pragma solidity ^0.8.0;
contract Array {
    struct ArrayNode {
        uint256 data;
        uint8 signedData;
    }

    ArrayNode[] private data;

    function push(uint256 a) external {
        data[data.length].data = a;
        data[data.length].signedData = 0;
    }
}
