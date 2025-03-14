pragma solidity ^0.8.0;
 contract SemanticEquivalent
{
  function test() public pure returns(uint8,uint256,uint64,int8,int256,int64)
  {
    uint8 b;
    uint256 c;
    uint64 d;
    int8 e;
    int256 f;
    int64 g;
    return (b, c, d, e, f, g);
  }
}

pragma solidity ^0.8.0;
contract NonSemanticEquivalentFallback
{
  function test() public pure returns(uint256,uint64,int64)
  {
    uint128 b;
    uint256 c;
    uint64 d;
    int64 e;
    return (b, c, d);
  }
}
contract SemanticEquivalentFallback
{
  function test() public pure returns(uint256,uint64,int64)
  {
    uint128 b;
    uint256 c;
    uint64 d;
    int64 e;
    return (b, c, d);
  }
}
contract ContractCaller
{
  function callWithFallback() public returns (uint256,int64) {
    if(address(this).balance > 0) {
      (uint256 b, uint64 c, int64 d) = test();
    } else {
      (c,d) = test();
    }
    return (b, d);
  }


}
