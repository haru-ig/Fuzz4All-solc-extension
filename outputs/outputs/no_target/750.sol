pragma solidity ^0.8.0;
contract RevertTestsemanticsCorrectArithmetic {
    function add2(uint a)
        public pure
        returns (uint)
    {
        if ((uint256(a) + (uint256(a) + 1) - uint256(a) - 10) * 10 == a) {
            return a;
        } else {
            return a + 2 + 2;
        }
    }
}
