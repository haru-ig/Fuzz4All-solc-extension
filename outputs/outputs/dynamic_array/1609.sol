pragma solidity ^0.8.0;
contract MutatedDynamicArrays3 {
    struct Record {
        uint key;
        string name;
    }

    Record[] records;


    modifier addRecord() {
        records.push(Record(key(), "This Element"));
        _;
    }
}
