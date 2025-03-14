pragma solidity ^0.8.0;
contract RevertTestNew {
    function add0(uint a, uint b)
        pure public
        returns (uint)
    {
        uint overflow1 = 0;
        return 0 - a + overflow1;
    }
    function add5()
        pure public
        returns (uint)




    {
        uint overflow2;
        return 0 - 1 + ++overflow2 + overflow2;
    }
    function add10()
        pure public
        returns (uint)





   {
      uint overflow3;
      return 10 * overflow3 + 1 + 0 - overflow3 + overflow3;
   }
 }
