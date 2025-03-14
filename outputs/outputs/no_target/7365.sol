pragma solidity ^0.8.0;
contract BugsABICoder3{
  uint16 fixedVariable;
  bool public fixedBool;
  mapping(address => uint) public addressBook;
  constructor () {
    fixedVariable=5;
    fixedBool=true;
  }
  function returnVariable() public view returns(uint){
    return fixedVariable;
  }
}
