pragma solidity ^0.8.0;
contract SemanticMutation3
{
   function test_b(uint256) public pure {}

   function foo() public pure
   {
       SemanticMutation3 s = new SemanticMutation3();
       s.test_b(49);
   }
}


pragma solidity ^0.8.0;
contract SemanticMutation2
{
   function test_c(uint256) public pure {}


   event MyA(uint256 a);
   event MyB(uint256 a);


   function test_b(uint256 t) public pure
   {
      MyA(2);
      MyB(t);
   }
}


pragma solidity ^0.8.0;
contract SemanticMutation1
{
   struct B { uint256 a; uint256 b; uint256 c; uint256 d; uint256 e; uint256 f; uint256 g; uint256 h; uint256 i; uint256 j; uint256 k; uint256 l; uint256 m; }

   function test_a(uint256) public pure
   {
      B memory b = B({a:1, b:3, c:5, d:7, e:9, f:11, g:13, h:15, i:17, j:19, k:21, l:23, m:25});
   }
}


<fim_middle>


pragma solidity ^0.7.3;
contract SemanticMutation0
{
    uint256 public a;
    function test_a(uint256) public pure
    {
        a = 42;
    }
}


pragma solidity ^0.7.5;
contract SemanticMutation5
{
    uint256 public a;
    function test_a(uint256) public pure
    {
        a = 0 ^ (1e1);
    }
}
