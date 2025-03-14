pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedArrayAssignment_8c95ac7562f1839ff7b9cfac17015a40
{
    struct Record
    {
        uint32 id;
        uint8[4] data;
        uint8[10] meta;
    }
    struct Event
    {
        uint32 id;
        bytes32 name;
        bytes32[2] fields;
        bytes32[3] fields2;
        bytes32[4] fields3;
    }
    struct Record {
        uint32 id;
        uint8[4] data;
        uint8[10] meta;
    }
    Event[] public events;
    Record[] public records;
    bytes32 internal[5] public internalStorageSpace;
    mapping(uint32 => uint32) recordIds;
    mapping(uint32 => Record) recordsCache;
    mapping(uint32 => bool) processedIds;
    uint32 public recordCount = 0;
    uint32[512] internal nonEmptyStorageData;
}
