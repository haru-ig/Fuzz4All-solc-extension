pragma solidity ^0.8.0;
contract BugsABICoder4{
  uint16 public fixedVariable;
  bool public fixedBool;
  uint98 public fixedUInt;
  mapping(address => uint) public addressBook;
  constructor () {
    fixedVariable=5;
    fixedBool=true;
    fixedUInt=5;
  }
  function returnVariable() public view returns(uint){
    return fixedVariable;
  }
  function returnAddress() public view returns(address){ return address(this); }
  function returnUInt() public view returns(uint16){ return fixedUInt; }
  function returnBool() public view returns(bool){ return fixedBool; }
}
