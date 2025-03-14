pragma solidity ^0.8.0;
struct SemanticSimilar{
  uint256 a;
  uint256 x;
  uint256 b;
  uint256 c;
}
contract SemanticSimilar4{
  SemanticSimilar v;
}
interface Interface {
  SemanticSimilar public x;
  SemanticSimilar v;
}
contract Caller {
  function callFromZeroToSameAddress(address receiver) public payable {}
  function fallback() payable public {
    callFromZeroToSameAddress;
  }
}
contract FallbackFunction {
  interface FunctionA {
    uint add(uint a, uint b) external pure returns(uint);
  }
  function add(uint a, uint b) public pure returns(uint){
    return a + b;
  }
  fallback function(){
  }
}
contract CallerAndFallbackFunction {
  function testCallerAndFallback() public payable {
    Interface a = new FallbackFunction();
    Interface b = a;
  }
}
contract CallerAndFallbackFunction2 {
  uint x;
  fallback function(){
    x = 1;
  }
}
contract CallerAndFallbackFunction2a {
  uint x;
  fallback function(){
    x = 1;
  }
}
contract CallerAndFallbackFunction3 {
  bytes32 public constant FALLBACK_BYTECODE = hex"600060046000396000f3fe608060405260043610604f576000357c0100000000000000000000000000000000000000000000000000000900463ffffffff16806360fe47b11615615f5b604051610260020a0319168015615e5780820380516001908080359060200190929190803590602001909291905050505060405180910390fd5b348015615e57600080fd5b34801560595790600186018160be021b1682811115615e57825182559160200191906000526020600020905b8060000
