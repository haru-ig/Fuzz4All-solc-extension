pragma solidity ^0.8.0;
contract A {
   function greet() { return "Hello"; }
   function greetWithParam(uint y) public pure returns(string memory) {
       return "Hello world";
   }
   function getUint() public view returns(uint32, uint32) {}
   function getUintNonReturn() public pure returns(uint32) {
       uint32 z = 0;
       z += 100;
       return 17;
     }
}

contract B {
    A a;
    bytes32 public expectedHexSignature = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855";
    bytes32 public expectedSignature = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b8558";
    event MyEvent(uint32, uint32);

    function() external payable {
    }

    function greetImpl(uint y) internal view returns(string memory) {
        require(uint(uint32(keccak256("606060405234801561001ba763146058061001080610101206202018114604060003960200180519182600201915050604052348015610027806100df9b03806100fb64806101058350380602081101561006f57600080fd5b5060405180910390f35b34801561003357600080fd5b61014ea1610158565b505060405180910390f35b34801561003f57600080fd5b61014ea1610158565b5056";
        )))
