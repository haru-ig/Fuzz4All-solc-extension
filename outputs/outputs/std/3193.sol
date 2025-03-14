pragma solidity ^0.8.0;
interface IDoubleBytesStorage {
  uint256 value;
  bytes32 first;
  bytes32 last;
  bytes12 last_;
  constructor(uint256 i) external;
  modifier onlyLast(uint256 _value) {
    if (last_ == now) {
      _;
    } else {
      _;
    }
  }
  function getFirst() public view returns (bytes32);
  function getLast() public view returns (bytes32);
  function getLast_() public view returns (bytes12);
  function getFirst_() public view returns (bytes32);
  function setFirst(bytes32 _first) public;
  function setFirst_(bytes12 _first) public;
  function setLast(bytes32 _last) public;
  function setLast_(bytes12 _last) public;
}
