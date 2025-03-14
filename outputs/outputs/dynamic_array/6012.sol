pragma solidity ^0.8.0;
contract Test30002 {
    struct MemoryCell {
        uint8 data;
    }
    uint private data[1];
    function() public payable { MemoryCell memory mycell = memory(data); data[0] = uint16(-1); }
}
