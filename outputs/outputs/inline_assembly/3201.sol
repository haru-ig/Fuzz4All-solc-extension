pragma solidity ^0.8.0;
contract Contract {
  map[string]uint[] memory _map;
  address public _owner;
  constructor() {
    _owner = msg.sender;
    _map["Test"] = [1,2,3];
  }
  function owner() public view returns (address) {
    return _owner;
  }
  function updateValue(uint num) public {
    _map["Test"] = [1,2,3,num];
  }
}
