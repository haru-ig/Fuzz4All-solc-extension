pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
  struct MixedContacts {
      uint256 x;
      uint256 z;
  }
  uint256 private z = 12;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){ }
  receive() payable {
    ss.x = 2;
    ss.z = 30;

    z = 121; }
    receive() payable {
    return;
    z = 1; } }
contract MixedContactsExample17 {
  struct MixedContacts {
      uint256 y;
      address b;
  }
  address private b;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    ss.y = 40;

    b = 0xb;

    _; }
    receive() payable {
    _; }
    receive() pure {
    return; } }
contract MixedContactsExample18 {
  struct MixedContacts {
      address a;
      uint256 b;
  }
  address private a;
  constructor() { a = 1; }
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    ss.a = 2;
    ss.b = 30;
    ss.a = 3;
    ss.a = 4;
    return ss; }
    receive() payable {
    _; } }
contract MixedContactsExample19 {
  struct MixedContacts {
      uint256 x;
      bytes32 c;
  }
  bytes32 private c;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    ss.x = 2;
    ss.c = keccak256(abi.encodePacked("this is a test for a long string"));
    return ss; }
    receive() payable {
    _; }
    receive() pure {
    return; } }
contract MixedContactsExample20 {
  struct MixedContacts {
      uint256 x;
      bytes32 c;
  }
  bytes32 private c;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    ss.x = 2;
    ss.c = keccak256(abi.encodePacked("this is a test for a long string"));
    return ss; }
    receive() payable { }
    event TestEvent
