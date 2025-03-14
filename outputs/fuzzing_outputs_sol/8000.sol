pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function testContractCall() internal pure returns(uint256,uint256) { return (2,4); }
  function testNonSemanticCall() internal pure returns(uint0,int0) { return (0,0); }
  function testFallbackCall() internal pure returns(uint8,uint256) { return (1,2); }
  function testFallbackCall0x01_1() internal pure returns(uint0,int0) { return (0,0); }
  function testFallbackCall0x01_2() internal pure returns(uint8,uint256) { return (1,2); }
  function testFallbackCall0x01_3() internal pure returns(uint0,int0) { return (0,0); }
}
contract EtherContract
{
  fallback();
  receive() external payable { }
}
contract FallbackFunction
{
  function fallback() public payable {}
}
contract ContractCaller
{
  function constructor() public {
    new SemanticEquivalent();
    new NonSemanticEquivalent();
    EtherContract(0x1234);
  }
}
