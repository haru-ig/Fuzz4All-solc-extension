pragma solidity ^0.8.0;
contract Equivalent {
  function useArray() public pure returns (uint8) {
    return 5;
  }

  function useInt() public pure returns (uint) {
    return uint(5);
  }

  function useInt8() public pure returns (int8) {
    return int8(5);
  }

  function useUint() public pure returns (uint256) {
    return uint256(5);
  }

  function useBytes32() public pure returns (bytes32) {
    return bytes32(5);
  }

  function useString() public pure returns (string memory) {
    return "5";
  }

  function useString2() public pure returns (string memory, uint256, uint) {
    return (
      "5",
      5,
      1
    );
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  function useArray() public pure returns (uint8) {
    return 5;
  }

  function useInt() public pure returns (uint) {
    return uint(5);
  }

  function useInt8() public pure returns (int8) {
    return int8(5);
  }

  function useUint() public pure returns (uint256) {
    return uint256(5);
  }

  function useBytes32() public pure returns (bytes32) {
    return bytes32(5);
  }

  function useString() public pure returns (string memory) {
    return "5";
  }

  address public address_;

  function useAddress() public pure returns (address) {
    address_ = 0x8E34254AD28D17CC4C7E0DB0e6a246AB356C4B9b;
    return address_;
  }


  uint public int_;

  function useInt() public pure returns (uint) {
    int_ = 5;
    return int_;
  }

  int8 public int8_;

  function useInt8() public pure returns (int8) {
    int8_ = 5;
    return int8_;
  }

  uint public uint_;

  function useUint() public pure returns (uint256) {
    uint_ = 5;
    return uint_;
  }

  uint8 public uint8_;

  function useUint8() public pure returns (uint8) {
    uint8_ = 5;
    return uint8_;
  }

  bytes32 public bytes32_;

  function useBytes32() public pure returns (bytes32) {
    bytes32_ = 5;
    return bytes32_;
  }

  bytes public memory_;

  function useMemory() public pure returns (bytes memory) {
    memory_ = bytes(5);
    return memory_;
  }

  function useString2() public pure returns (string memory, uint256, uint) {
    return (
      "5",
      5,
      1
    );
  }

  function pure() public pure {
    require(false);
  }

  function useMemoryPtr(address memory _pointer) public pure returns (bytes memory) {
    return _
