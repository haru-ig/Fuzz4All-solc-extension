pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure returns(uint8,uint256) { return (1,2); }
}


contract LowLevelCallEquivalent
{
  function test(uint256 _value)
    external(pure)
    returns(uint8,uint256,uint64,int8,int256,int64) {  return (1,2,_value,4,5,6); }
}


pragma solidity ^0.8.0;
contract LowLevelReceiveFunction
{
  function test(uint256 _value)
    external
    pure
    returns(uint8,uint256,uint64,int8,int256,int64) {  return (1,2,_value,4,5,6); }
}

contract FallbackEquivalent {

  fallback EIP712AddressVerifier myVerifier;



  function EIP712AddressVerifier()
  {
    assembly {






      myVerifier.0x030c3a075ea1eb41b00a7db8ad983bd595b011f2cb3c11b5f8c00d1fd6192021a79193bdedf28cf95a758b279bafe58ef28204704907f0820000000000000000000",
