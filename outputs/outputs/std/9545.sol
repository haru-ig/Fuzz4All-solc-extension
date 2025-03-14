pragma solidity ^0.8.0;
contract Mutate52 {
  bytes32 private _privateUint;

  modifier publicModifier {
    _privateUint = _privateUint + _privateUint;
    require(true, 'Test failed');
  }
}
