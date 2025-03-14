pragma solidity ^0.8.0;
struct Struct12 {
    address private _owner;
    bytes32 private _name;
    uint256 _num;
    uint256 _balance;
}
contract SemanticallyEquivalentSolidity235_struct12 {
  Struct12 private s12;
  mapping(address => bool) private addressBook;
  address[] private nonEmptyAddrs;
  bytes32[] private emptyByts;

  constructor (){
  }

  function testAddressbook() public view returns(address payable[] memory){
    return addressBook[msg.sender];
  }

  function testNonEmptyAddr() public view returns(address[] memory){
    return nonEmptyAddrs;
  }

  function testEmptyByts() public view returns(bytes32[] memory){
    return emptyByts;
  }

  function setToOwner(address payable owner) public{
    s12._owner = owner;
  }

  function setName(bytes32 name) public{
    s12._name = name;
  }

  function setNum(uint256 num) public{
    s12._num = num;
  }

  function setOwner(address payable owner, address payable addr) public{
    addressBook[addr] = false;
    addressBook[owner] = false;
  }

  function setBalance(address payable addr, uint256 num) public{
    uint256 balance = addressBook[addr]? num : 0;
    addressBook[addr] = false;
    addressBook[s12._owner] = false;
    s12._balance = balance;
  }

  function setNonEmptyAddr(address addr) public{
    nonEmptyAddrs.push(addr);
  }

  function setEmptyByts(bytes32 addr) public{
    emptyByts.push(addr);
  }

  function setToZero() public{
    s12._num = 0;
    s12._balance = 0;
  }

  function getOwner() public view returns(address){
    return s12._owner;
  }

  function getName() public view returns(bytes32){
    return s12._name;
  }

  function getNum() public view returns(uint256){
    return s12._num;
  }

  function getBalance() public view returns(uint256){
    return s12._balance;
  }
}
