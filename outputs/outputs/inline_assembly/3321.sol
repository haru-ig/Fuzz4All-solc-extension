pragma solidity ^0.8.0;
contract CallMutablilityFour {
  bytes public data;
  uint public value;
  constructor ( bytes memory _data) {
data = _data;
value = 0;
}
}
