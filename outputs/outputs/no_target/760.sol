pragma solidity ^0.8.0;
contract SemanticCheckSemanticsModerateArithmeticV3 {
    function add2(uint a)
        public pure
        returns(uint)
    {
        uint b;
        assembly {

            b := a * 2
            b
            c := a + b
            c
        }
        return c - 100 + a - (100 + 10);
    }
}
