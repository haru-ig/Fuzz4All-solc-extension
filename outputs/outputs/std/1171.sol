pragma solidity ^0.8.0;
contract B2_Convert_v1 {
  struct uint8Array {
    uint8 _data;
    bytes8 _sig;
  }


  uint8 arrayBuffer;

  function uint8ToBigEndian(uint8 _value) public pure returns (uint8) {
    uint8Array memory buffer = uint8Array(_value);
    uint8Array memory sig = uint8Array(bytes8(buffer._data.toHexString()));

    return buffer._data.toBigInt().toUint().add(sig._data);
  }

  function uint8ToLittleEndian(uint8 _value) public pure returns (uint8) {
    uint8Array memory buffer = uint8Array(bytes8(bytes1(keccak256(abi.encodePacked(_value)))))._data;

    return buffer._data;
  }

  function uint8ToBytes8(uint8 _value) public pure returns (bytes8) {
    uint8Array memory buffer = uint8Array(bytes8(bytes1(keccak256(abi.encodePacked(_value)))))._data;

    Buffer storage sig = buffer._sig;
    if (bytes1(keccak256(bytes8(buffer._data.toHexString())) ^ bytes1(keccak256(sig))))!= bytes1(keccak256("0x00"))) {
      return 0;
    }

    return buffer._data;
  }

  function strToBytes8(string memory _str) public pure returns (bytes8) {}
  function bytes8ToStr(bytes8 _bytes8) public pure returns (string memory) {}

  function bytes1ToBytes8(bytes1 _bytes1) public pure returns (bytes8) {}
  function bytes8ToBytes1(bytes8 _bytes8) public pure returns (bytes1) {}
}
