pragma solidity ^0.8.0;
contract Semantic30017 {
    constructor () public {}
    uint constant dataSize = 5;
    uint dataLength;
    uint[] storage data;
    fallback () public {
        dataLength = dataLength + dataSize;
        data.push(dataLength);
    }
}
