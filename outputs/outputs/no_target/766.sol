pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV5 {
    function add2(uint a)
        public pure
        returns(uint)
    {
        return a + uint(200 + 0x0) -0x1 * 10^- uint(73);
    }
}
