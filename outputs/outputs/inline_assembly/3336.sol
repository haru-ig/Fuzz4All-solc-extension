pragma solidity ^0.8.0;
contract CallMutablility {
  uint public value = 0;
  bytes public data;
  assembly {
  data := mload(0x40)
  value := mload(0x48)
  }
  constructor ( uint _value, bytes memory _data) {
    value = _value;
data = _data;
}
}
