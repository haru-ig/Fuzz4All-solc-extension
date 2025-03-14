pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure returns(uint8[2],uint256[2],uint64[2],int8[2],int256[2],int64[2]) { return (uint8(1),uint256(2),uint64(3),int8(4),int256(5),int64(6)); }
}

pragma solidity ^0.8.0;
contract Inheritance
{
  function test() public pure returns(NonSemanticEquivalent.testStruct storage,SemanticEquivalent.testStruct storage)
  { return NonSemanticEquivalent.testStruct({a: 1},SemanticEquivalent.testStruct({b: 2})); }
}
