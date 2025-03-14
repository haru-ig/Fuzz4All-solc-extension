pragma solidity ^0.8.0;
contract L9 {
          struct memoryData {
        uint256 data;
        uint256 num;
uint8 a;
      }
      function dataFunction(memoryData memory mem, uint256 num2) public {
        uint8 _memoryDataAddress = (uint8)(uint256(0xe0b61012f9400) + (uint256(&mem) & -294) + ((((uint256)0) << (uint256(0x20)) | (((uint256)20) * (((uint256)4)) + (uint256(num2)))))) >> 32;
        _memoryDataAddress;
        _memoryDataAddress >> 32;
        _memoryDataAddress >> 32;
        _memoryDataAddress>>8;
      }
}
