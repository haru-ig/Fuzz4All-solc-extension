pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract {
  string constant str = "some test string string string string string string string string string";
  uint public v;
  constructor() public{
    v = 0;
  }
  function _calculate() public pure returns (uint) {
    return( v );
  }
  function _modify() public {
    v = 10;
  }
}
contract TestMutatable {

  ContractData public _data;

  constructor() public {
    _data = 20;
  }
  function _modify() public {
    _data = 100;
  }
  function getResult() public view returns (uint) {
    return(_data);
  }
}
contract TestMutable {

  uint public _data;

  function _modify() public {
    _data = 10;
  }
  function getResult() public view returns (uint) {
    return (_data);
  }
}
contract TestSet {
  uint immutable _data;

  constructor() public {
    _data = 10;
  }

  function _set(uint x) public {
    if (_data >= x) {
        _data = 20;
    }
  }

  function _get() public view returns (uint) {
    return(_data);
  }
}
