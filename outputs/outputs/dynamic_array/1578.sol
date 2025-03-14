pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    struct Record {
      uint name;
    }
    address[] private addressBook;

      uint8 dynamicArraySize;
      record[] private records;
      uint8 private count;
      mapping (uint256 => Record) private recordBook;
      address addr = msg.sender;
      bool contractInitialized = false;

      constructor (address _addr, uint8 _size) {
        addr = _addr;
        contractInitialized = true;

        for (uint256 i = 0; i < _size; i++) {
          addressBook.push(addr);
        }
      }
      function getName(uint256 _index) view public returns (uint) {
        return records[_index].name;
      }
  }
