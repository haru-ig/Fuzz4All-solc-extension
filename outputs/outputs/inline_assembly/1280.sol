pragma solidity ^0.8.0;
contract Mutant3
{
   uint public d_count;
   uint public c_count;
   bool public d;
   bool public c;
   constructor() public {
      uint a = 42;
      c = true;
      d = false;

      (c_count, c) = (1, c);
      (d_count, d) = (2, c());
      d_count = 3 + ((a + 1) * 2);
   }
   receive() external payable {}
   function test() public pure returns (uint)
   {

       _storage.c_count = (d);
       d_count += (c);
   }*/
}
