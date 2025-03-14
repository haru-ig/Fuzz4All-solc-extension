pragma solidity ^0.8.0;
contract SemanticEquivalentDapp {
  string private d;
  address public e;
  mapping (uint=>address) public f;
  constructor () public {d="Hello Dapp d";e=address(this)}
  function functionCall(address payable f)
      payable
      nonReentrant
      returns(address)
  {
      if(true){
        uint a=f.call{value:address(this).balance}("");
        uint b;
        (b,,a) = f("");
        uint c;
        (,, c) = f.call{value:address(this).balance}(abi.encode(""););
        (,, b) = f.call{value:
