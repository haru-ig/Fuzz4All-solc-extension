pragma solidity ^0.8.0;
contract Math{
  address public owner;
  uint32[] memoryOfMath;
  uint32 public constant MAX_VALUE_UINT32 = 0xffffffff;
  uint256 public constant MIN_VALUE_UINT256 = 0x000000000000000000000000000000000000000;
}
contract Memory
{

      function gadgetAddress() public view returns (address) {
        return owner;
      }

      function getArrayOfMemory() public view returns (uint[])
      {
        return arrayOfMath;
      }

      function getMemoryValue() public view returns (uint)
      {
        return uint(0);
      }

      function getBytes(uint _length) public view returns (bytes memory) {
        return bytes(0);
      }

      function getBool() public view returns (bool)
      {
        return true;
      }

      function getUint32() public view returns (uint32)
      {
        return 0;
      }

      function getUint32Array() public view returns (uint32[]) {
        return [MAX_VALUE_UINT32, MIN_VALUE_UINT256];
      }

      function getUint16Array() public view returns (uint16[]) {
        return [MAX_VALUE_UINT16, MIN_VALUE_UINT256];
      }

      function getUint32Array2(
        uint _arraySize
      ) public view returns (uint32[]) {
        uint32[] memory arrayOfNumbers = new uint32[](_arraySize);
        for(uint i = 0; i < _arraySize; i = i + 1) {
          arrayOfNumbers[i] = MAX_VALUE_UINT32;
        }
        uint32[] memory arrayOfNumbers1 = new uint32[](_arraySize);
        for(uint i = 0; i < _arraySize; i = i + 1) {
          arrayOfNumbers1[i] = MIN_VALUE_UINT256;
        }
        return [MAX_VALUE_UINT32, MIN_VALUE_UINT256];
      }

      function getUint32Array1(
        uint _arraySize
      ) public view returns (uint32[])
      {
        uint32[] memory arrayOfNumbers = new uint32[](_arraySize);
        for(uint i = 0; i < _arraySize; i = i + 1) {
          arrayOfNumbers[i] = 0;
        }
        uint32[] memory arrayOfNumbers1 = new uint32[](_arraySize);
        for(uint i = 0; i < _arraySize; i = i + 1) {
          arrayOfNumbers1[i] = MAX_VALUE_UINT32;
        }
        return [MAX_VALUE_UINT32, MIN_VALUE_UINT256];
      }

      function getArray(uint32[] memoryNumbers2) public view returns (uint
