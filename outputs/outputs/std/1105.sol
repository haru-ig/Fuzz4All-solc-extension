pragma solidity ^0.8.0;
contract Array {

  function minMaxSum(uint a[], uint min, uint max) public pure returns (uint, uint){}
}
address contractAddress;
contract Convert {

  mapping(address => Array) private _arrayContracts;
  constructor (Array arrayContract_) internal{
    _arrayContracts[address(arrayContract_)] = arrayContract_;
  }
  function get(address a, uint idx) public view returns (uint, uint) {
    return (_arrayContracts[a].minMaxSum(a), _arrayContracts[a].minMaxSum(a, 0, (uint)a.length));
  }
}
