pragma solidity ^0.8.0;
contract Mutate2 {
  Mutate public _contract;
  uint[] internal _array;
  uint public _contractValue;
  uint internal _amount;
  uint internal _amount2;
  uint internal _amount3;
  constructor() {
    _array = new uint[](3);
  }
  function Mutate1(address caller) public{
    _contractValue = _contract.getContractValue();}
  function getAmount(bool isExternalAddress) public{
    if(isExternalAddress){
      if(msg.sender==0){
        address myAddress=0xabcdef;
        address myAddress2 = address(0xdead200);
        address myAddress3 = address(this);
        _amount=address(myAddress).balance;
        _amount2=abi.encodePacked(myAddress2).length;
        _amount3=bytes(abi.encodePacked("myString")).length;}
    else{
      _amount=_contractValue;}
  } else{
    _amount=0xfffffffe;
    _amount2=bytes(abi.encodePacked("myString")).length;
    _amount3=abi.encodePacked("myString").length;}
  }
  function getAmount2(bool isExternalAddress2) public{
    if(isExternalAddress2){
      if(msg.sender==0){
        address myAddress=0xabcdef;
        address myAddress2 = address(0xdead200);
        address myAddress3 = address(this);
        _amount=address(myAddress).balance;
        _amount2=abi.encodePacked(myAddress2).length;
        _amount3=bytes(abi.encodePacked("myString")).length;}
    else{
      _amount=_contractValue;}
  } else{
    _amount=0xfffffffe;
    _amount2=bytes(abi.encodePacked("myString")).length;
    _amount3=abi.encodePacked("myString").length;
  }
  function getAmount3(bool isExternalAddress3) public{
    if(isExternalAddress3
