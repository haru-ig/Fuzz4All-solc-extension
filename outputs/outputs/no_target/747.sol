pragma solidity ^0.8.0;
contract RevertTestsemanticsImperfectArithmetic {
    function add2(uint a)
        public pure
        returns (uint)
    {
        unchecked {
            return a + 1 + (a + 1 - a - 10) * 10;
        }
    }
}
