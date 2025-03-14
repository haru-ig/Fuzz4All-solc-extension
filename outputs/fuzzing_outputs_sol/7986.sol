pragma solidity ^0.8.0;
contract SemanticEquivalent1
{
  function call() public payable pure { }
}
contract SemanticEquivalent2
{
  function call(uint amount) public pure { }
}
contract SemanticEquivalent3
{
  function call(bytes calldata data) public pure { }
}
contract SemanticEquivalent4
{
  function call(bytes[10] memory) public pure { }
}
contract SemanticEquivalent5
{
  function call(address payable) public pure { }
}
contract SemanticEquivalent6
{
  function call(bytes32[10] memory) public pure { }
}
contract SemanticEquivalent7
{
  function call(bytes calldata[10] memory) public pure { }
}
contract SemanticEquivalent8
{
  function call(address payable[10] memory) public pure { }
}
contract SemanticEquivalent9
{
  function call(bytes memory[10]) public pure { }
}
contract SemanticEquivalent10
{

  constructor() { revert(); }


  function initialize() public view { revert(); }


  function fallback() public pure {}


  function action() public payable pure { revert(); }
}
contract SemanticEquivalent11
{
  function call(uint amount) public pure { }
}
contract SemanticEquivalent12
{
  function call(uint amount) public pure { }
}
contract SemanticEquivalent13
{
  function call() public pure { }

  fallback() external pure {}
}
contract SemanticEquivalent14
{

  constructor() { revert(); }


  function fallback() public pure
    { }


  receive() external pure {}


  function action() public pure
    { revert(); }
}
contract SemanticEquivalent15
{
  function call() public pure { }

  fallback() external pure {}
}
contract SemanticEquivalent16
{

  fallback() external pure {}
}
contract SemanticEquivalent17
{
  function call() public pure { }
}
contract SemanticEquivalent18
{

  function fallback() public pure
    { }


  receive() external pure {}


  function noAction() public pure { }
}
contract SemanticEquivalent19
{
  function call(uint amount) public pure { }
}
