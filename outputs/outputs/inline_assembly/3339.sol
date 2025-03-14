pragma solidity ^0.8.0;
contract CallMutablility {
  bytes public data;
  uint public value;
  constructor ( uint _value, bytes memory _data) {
    value = _value;
data = _data;
}
}
