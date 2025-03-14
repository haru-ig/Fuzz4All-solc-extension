pragma solidity ^0.8.0;
contract MutatedNonSemanticEquivalent
{
    functInterface NonSemanticEquivalent
    {
      function test() public pure returns(uint256);
    }

    function mutateNonSemanticEquivalent() public pure
    {
      NonSemanticEquivalent nonSemanticEquivalent = NonSemanticEquivalent(0x4242);

      (string memory a, uint256 b, uint8 c, int8 d, int256 e, int64 f) = nonSemanticEquivalent.test();
      assert(a == "1");
      assert(b == "2");
      assert(c == "3");
      assert(d == "4");
      assert(e == "5");
      assert(f == "6");

      uint8 a_1;
      uint8 b_1;
      uint8 c_1;
      int8 d_1;
      int8 e_1;
      int8 f_1;
      int256 a_2;
      int256 b_2;
      int256 c_2;
      int64 d_2;
      int64 e_2;
      int64 f_2;

      (a_1,b_1,c_1,d_1,e_1,f_1) = nonSemanticEquivalent(1,2,3,4,5,6);
      assert(a_1 == "1");
      assert(b_1 == "2");
      assert(c_1 == "3");
      assert(d_1 == "4");
      assert(e_1 == "5");
      assert(f_1 == "6");

      (a_2,b_2,c_2,d_2,e_2,f_2) = NonSemanticEquivalent(1,2,3,4,5,6);
      assert(a_2 == "1");
      assert(b_2 == "2");
      assert(c_2 == "3");
      assert(d_2 == "4");
      assert(e_2 == "5");
      assert(f_2 == "6");

      NonSemanticEquivalent(1,2,3,4,5,6).test();
    }
}
