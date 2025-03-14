pragma solidity ^0.8.0;
contract CallMutablility {
  bytes256 public data;
  uint public value = 0;
  constructor ( bytes256 _data) {
    value = uint(keccak256(abi.encodePacked(keccak256(abi.encodePacked(_data)))));
data = bytes256(_data);
}
}
