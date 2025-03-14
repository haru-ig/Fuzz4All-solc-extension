pragma solidity ^0.8.0;
contract SemanticMutation6
{
   uint16 internal x = 0;
   function test_a() public {
      if (x == 0){
         SemanticMutation4(1).test_a(x);
      }
   }
}

pragma solidity ^0.8.0;
contract SemanticMutation7
{
   function test_a() public {
      if (x == 0){
         uint256 r = SemanticMutation6(1).test_a();
         x = x * r;
      }
   }
}
