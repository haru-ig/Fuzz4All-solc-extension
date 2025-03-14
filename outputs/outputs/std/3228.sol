pragma solidity ^0.8.0;
library LibBytes {
  uint8 internal constant LSB = 0x20;

  struct Bytes4BytesArray {
    uint256[4] storage storage_;
    bytes32 _key;
  }

  function toBytes1(uint8[4] memory storage_)
    internal
    pure
    returns (bytes memory)
  {
    return bytes(libraryBytes4(storage_));
  }

  function doLength(uint256[4] memory storage_)
    internal
    view
    returns (uint256)
  {
    return storage_[3];
  }

  function doGet(uint256[4] memory storage_, uint256 i)
    internal
    view
    returns (bytes memory)
  {
    return libraryBytes8(libraryBytes4(storage_), storage_[4 + i]);
  }

  function doSet6(uint256[4] memory storage_, uint256 i, bytes memory b)
    internal
  {
    libraryBytes4(storage_)[i] = b;
  }

  function doSet12(
    uint256[4] memory storage_,
    uint256 i,
    bytes calldata b
  )
    internal
  {
    libraryBytes8(libraryBytes4(storage_), i) = b;
  }

  function libraryBytes4(uint256[4] memory storage_)
    internal
    pure
    returns (bytes memory)
  {
    bytes memory result = new bytes(4);
    uint8* p = result.data;
    p[0] = bytes1(storage_[0]);
    p[1] = bytes1(storage_[1]);
    p[2] = bytes1(storage_[2]);
    p[3] = bytes1(storage_[3]);
    return bytes(result);
  }

  function libraryBytes8(bytes memory bytes4, uint256 i)
    internal
    pure
    returns (bytes memory)
  {
    return bytes(bytes4.add(bytes2(i)));
  }

  modifier ifLength3(uint256[4] storage memory x) {
    require(x[3] == 3, "bytes.length.3");
    _;
  }

  struct Bytes6BytesArray {
    uint256[6] storage storage_;
    bytes32 _key;
  }

  function toBytes3(uint8[6] memory storage_)
    internal
    pure
    returns (bytes memory)
  {
    bytes memory result = storage_.toEmptyBytes3();
    uint8* result_data = result.data;
    result_data[0] = bytes1(storage_[0]);
    result_data[1] = bytes1(storage_[1]);
    result_data[2] = bytes1(storage_[2]);
    result_data[3] = bytes1(storage_[3]);
    result_data[4] = bytes1(storage_[4]);
    result_data[5] = bytes1(
