pragma solidity ^0.8.0;
contract ArrayStorage {
  address[] _arr;
  bool[] _boolArr;
  bytes _bytesArr;
  uint8 _int8Arr;
  uint16 _int16Arr;
  uint32 _int32Arr;
  uint64 _int64Arr;
  uint128 _int128Arr;
  uint256 _uint256Arr;
  address _addressArr;

  function getArr() public returns (address[] memory) {
    return _arr;
  }
  function getBoolArr() public returns (bool[] memory) {
    return _boolArr;
  }
  function getBytesArr() public view returns (bytes memory) {
    return _bytesArr;
  }
  function getInt8Arr() public returns (uint256) {
    return _int8Arr;
  }
  function getInt128Arr() public returns (uint256) {
    return _int128Arr;
  }
  function getInt16Arr() public returns (uint256) {
    return _int16Arr;
  }
  function getInt32Arr() public returns (uint256) {
    return _int32Arr;
  }
  function getInt64Arr() public returns (uint256) {
    return _int64Arr;
  }
    function setBoolArr(bool[] memory boolArr) public {
      for (uint256 i = 0; i < boolArr.length; i++) {
        _boolArr[i] = boolArr[i];
      }
    }
    function setAddressArr(address[] memory addressArr) public {
      for (uint256 i = 0; i < addressArr.length; i++) {
        _addressArr[i] = addressArr[i];
      }
    }
    function setBytesArr(bytes memory bytesArr) public {
      for (uint256 i = 0; i < bytesArr.length; i++) {
        _bytesArr[i] = bytesArr[i];
      }
    }
    function setInt8Arr(uint256 int8Arr) public {
      _int8Arr = int8Arr;
    }
    function setInt128Arr(uint256 int128Arr) public {
      _int128Arr = int128Arr;
    }
    function setInt16Arr(uint256 int16Arr) public {
      _int16Arr = int16Arr;
    }
    function setInt32Arr(uint256 int32Arr) public {
      _int32Arr = int32Arr;
    }
    function setInt64Arr(uint256 int64Arr) public {
      _int64Arr = int64Arr;
    }

    function setUint
