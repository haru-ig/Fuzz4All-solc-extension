pragma solidity ^0.8.0;
contract Convert {
  bytes2 public data;
  function byte() public pure returns(uint8) { return (uint8(uint8(data))); }
  function string(uint8 index) external pure returns(string memory) { return bytes2toString(data, index); }
}
