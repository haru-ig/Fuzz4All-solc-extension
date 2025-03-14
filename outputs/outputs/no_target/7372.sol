pragma solidity ^0.8.0;
contract BugsABICoder4{
  uint16 public fixedVariable=77;
  bool public fixedBool=false;
  mapping(address => uint) public addressBook;
  constructor () {
    fixedVariable++;
    fixedBool--;
  }
  function returnVariable() public view returns(uint){
    return fixedVariable;
  }
}
