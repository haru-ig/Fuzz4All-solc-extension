pragma solidity ^0.8.0;
contract SemanticSimilar{
  mapping (address=>bool) indexed mapAddresses;
  mapping (address=>uint) mapU64;
  mapping (address=>bool) mapBool;
  function f() public returns (uint) {
    mapAddresses[msg.sender]=true;
    mapU64[msg.sender]=4;
    mapBool[msg.sender]=true;
  }
}
