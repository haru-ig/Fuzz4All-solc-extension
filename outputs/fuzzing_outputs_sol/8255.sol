pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint constant a = 1;
  uint b = a;
  uint c = a;
  function f(uint a) public {
    b *= c;
    b += 54;
    b %= 100;
  }
}

address contractInstance = 0x3d55169a7cb99926ec84908dc1cafe299e39d939;
address anotherContractInstance = 0x3d55169a7cb99926ec84908dc1cafe299e39d939;
function f(address contractAddress) public {

  uint result = contractAddress.call.value(uint(0.002))(abi.encodePacked("return(true)"));
  bytes memory data = abi.encodePacked(uint(result));
  contractAddress.call.value(uint(0.002))(data, abi.hash("return(true)"));
}

contract SemanticSimilar15 {
  uint x;
  uint f(uint a, uint b, uint c) internal pure {
    c = a / c;
    b /= c;
  }
  function g(uint a, uint b, uint c) public {
    f(uint(c), uint(c), uint(b));
  }
}
