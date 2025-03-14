pragma solidity ^0.8.0;
import './DynamicArraysV3.sol';
contract DynamicArraysV4 {
    struct Record {
        uint256 value;
    }

    Record[] records;
    uint recordCapacity;

    constructor(uint c) public {
        recordCapacity = c;
    }

    function addRecord() public {

        uint c = (recordCapacity + 1);

        uint x = (((uint96((uint256(uint96(keccak256(abi.encodePacked(keccak256("\x19Ethereum Signed Message:\n55Bytes(0x008b0285d5f68080007338116b5f6f4666768")))))) >> 26) & c) % c);
        records.push(Record({value: x}));
    }

    function removeRecord() public {

        uint c = (recordCapacity - 1);


        uint x = (((uint96((uint256(uint96(keccak256(abi.encodePacked(keccak256("\x19Ethereum Signed Message:\n55Bytes(0x008b0285d5f68080007338116b5f6f4666768")))))) >> 26) & c) % c);


        uint y = (((uint96((uint256(uint96(keccak256(abi.encodePacked(keccak256("\x19Ethereum Signed Message:\n
