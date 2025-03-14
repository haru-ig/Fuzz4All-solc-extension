pragma solidity ^0.8.0;
contract Equivalence
{
  uint8 a;
  uint8 b;
  uint256 c;
  uint256 d;
  uint64 e;
  int8 f;
  int256 g;
  int64 h;
  function test() external {}
}
contract Equivalenced {
  function test() public {SemanticEquivalent semanticEquivalent;}
  function test() public {Equivalence equivalence;}
}
pragma solidity ^0.8.0;
contract Caller {
  function call(Address contractAddress, uint8 data, uint8 target) public payable {
    Equivalenced.test(1111u1111, 1111u1111, 1111u1111);

    contractAddress.functionCall(abi.encodeWithSignature("target(uint8, uint8)"));

  }
}
