pragma solidity ^0.8.0;
contract F {
  mapping(uint => bytes32) private _mapping;
  mapping(uint => bytes32) private _mapping1;
  mapping(address => bytes32) public m;
}
contract G is F {
  mapping(uint => bytes32) public m = m;
}
contract H {
  mapping(uint => bytes32) private _mapping;
  uint[10] private _mapping1;
  uint8[10 + 32] public m;
}
