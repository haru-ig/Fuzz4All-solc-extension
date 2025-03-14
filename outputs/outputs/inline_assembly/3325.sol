pragma solidity ^0.8.0;
contract CallMutablility {
  bytes public data;
  uint public value = 0;
  constructor ( bytes memory _data) {

    value = uint(keccak256(abi.encodePacked(keccak256(abi.encodePacked(_data)))));
data = _data;
}
}
