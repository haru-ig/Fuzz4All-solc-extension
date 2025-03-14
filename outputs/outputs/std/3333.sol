pragma solidity ^0.8.0;
contract Example{
  struct ArrayMutators{
    uint48 a;
    uint48 b;
  }

  mapping(bytes32 => ArrayMutators) public mappingBytes32ToArrayMutators;
  uint48[2] memory uintMemory;
  uint48[] memory byteArray;
  uint48[][2] memory uintArray2D;

  function setByteArray(uint48[] memory a) public view returns(uint[][] memory){
    uint256 length = a.length;
    uint[][] memory memory2D = new uint[length][2];
    for (uint i = 0; i < length; i++) {
      memory2D[i][0] = string(a[i] ^ 'a' ^ ('b' * i));
      memory2D[i][1] = uint48(a[i]);
    }
    return memory2D;
  }

  function setByteArrayArray(uint48[][] memory uint2DArray) public view returns(uint[][][][] memory){
    uint256 length = uint2DArray.length;
    uint[][][][] memory memory3d = new uint[length][2][2];
    for (uint i = 0; i < length; i++) {
      uint[][] memory memory2D = new uint[length][2];
      for (uint j =0; j < length; j++){
        memory2D[j][0] = uint2DArray[i][j] ^ 'a' ^ ('b' * i ^ j);
        memory2D[j][1] = uint2DArray[i][j];
      }
      memory3d[i][0][0] = string(uint2DArray[i][0] ^ 'a' ^ ('b' * i));
      memory3d[i][0][1] = memory2D;
      memory3d[i][1][0] = string(uint2DArray[i][1] ^ 'a' ^ ('b' * i));
      memory3d[i][1][1] = memory2D;
    }
    return memory3d;
  }

  function setByteArrayMutators(ArrayMutators memory arrayMutators) public {
    mappingBytes32ToArrayMutators.put(abi.encode(uint48(mappingBytes32ToArrayMutators.length)), uint48(mappingBytes32ToArrayMutators.length)));
    mappingBytes32ToArrayMutators[abi.encode(uint48(mappingBytes32ToArrayMutators.length)), uint48(mappingBytes32ToArrayMutators.length)] = arrayMutators;
  }

  function getByteArrayMutators(bytes32 key) public view returns(ArrayMutators memory){
    if (mappingBytes32ToArrayMutators[key] == ArrayMutators({})){
      mappingBytes32ToArrayMutators[key] = ArrayMutators({a : address(mappingBytes32ToArrayMutators.length).add(uint48(mappingBytes32ToArrayMutators.length)), b : address(mappingBytes32ToArray
