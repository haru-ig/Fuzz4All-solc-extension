pragma solidity ^0.8.0;
contract MyContract {
  mapping(uint256 => string) public names;
  mapping(uint256 => uint32) public values;

  function set(uint32 key, string value) {
    names[key] = value;
  }

  function get(uint32 key) public view returns (string memory) {
    return names[key];
  }
}
