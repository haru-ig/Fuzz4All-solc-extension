pragma solidity ^0.8.0;
contract SemanticMutation3
{
   mapping (uint => bool) public bools;
   function test_a(uint i) public view returns(uint256 j) {
      bools[i] ^= true;
      if (bools[20]) {
         j += 100;
      }
   }
}
contract SemanticMutation2
{
   mapping(bytes32 => uint) public numbers;
   bytes32 x = "Hello";
   function test_a(uint i) public returns(bytes32 y, uint256 z) {
      numbers[100000000000000] = i * 10;
   }
}
contract SemanticMutation
{
   function test_a(uint i) public view returns(bytes32 y, uint256 z, uint162 a, bytes32 z, bool b, uint constant y) {
      bytes32 z = "world";
   }
   function test_b(uint i) public constant returns(uint x) {
      bytes32 z = "world";
      x = i + 1;
   }
}
