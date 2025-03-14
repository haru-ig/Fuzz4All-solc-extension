pragma solidity ^0.8.0;
import "ArrayMutatorMutator.sol";
contract MutatedArrayMutator is ArrayMutatorMutator {
  uint256 initialData;
  uint256 mutatedData;
  uint256 len;
  uint256 result;
  mapping (uint256 => uint256) mapArrayToUint;
  mapping (uint256 => uint256[]) mapArrayToArrayType;



  function getOriginalArrayLength() public view returns (uint256){
    return initialData;
  }



  function getMutatedArrayLength() public view returns (uint256){
    return mutatedData;
  }



  function updateInitialArrayLength(uint256 _newLength) public returns (uint256) {
    initialData = _newLength;
    len = _newLength;
    return len;
  }



  function updateMutatedArrayLength(uint256 _newLength) public returns (uint256){
    mapArrayToUint[len] = _newLength;

    return len;
  }



  function getArrayLength(bytes memory memoryBytes) public view returns (uint256){
    if (len == 0){
      len = uint256(abi.decode(memoryBytes, (uint8)));
    }
    return len;
  }



  function getArrayAddress(bytes memory memoryBytes) public view returns (bytes memory memAddress){
    return bytes(uint256(abi.decode(memoryBytes, (uint8))));
  }



  function getArrayValue(bytes memory memoryAddress, uint256 i) public view returns (uint256 val){
    if (len == 0){
      return val;
    }
    if (i >= len || i!= cast(uint256(abi.decode(memoryAddress, (uint8)))))) {
      return bytes32ToUint256(abi.decode(memoryAddress, (uint8))));
    } else {
      return val;
    }
  }
