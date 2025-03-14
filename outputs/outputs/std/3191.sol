pragma solidity ^0.8.0;
interface IDoubleBytesImmutableStorage {
  function setDoubleBytes(uint256 a, bytes2 a_, bytes2 b_) external;
  function getDoubleBytes(uint256 a, bytes2 a_, bytes2 b) external view returns (bytes2);
}

pragma solidity ^0.8.0;
contract Storage is IDoubleBytesStorage, IDoubleBytesImmutableStorage {
  uint256[240] private allData;
  function setDoubleBytes(uint256 a, bytes2 a_, bytes2 b_) external {
    allData[a] = a_;
    allData[a + 256] = b_;
  }
  function getDoubleBytes(uint256 a, bytes2 a_, bytes2 b) external view returns (bytes2) {
    return allData[a];
  }
}
