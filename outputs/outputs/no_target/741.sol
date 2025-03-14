pragma solidity ^0.8.0;
contract RevertTestSemanticsWithMultipleSemantics {
    function add21(uint a, uint b)
        public pure
        returns (uint)
    {
        uint overflow;
        uint overflow2;

        unchecked {
          overflow = 1 - (1 - a) * (a == 0);
        }
        unchecked {
          overflow2 = 0 > -1;
        }
        return 1 - overflow + overflow2;
    }
}
