pragma solidity ^0.8.0;
contract DryMut {
  MutatedContract _obj;
  constructor() {
    _obj = new MutatedContract();
  }
}
