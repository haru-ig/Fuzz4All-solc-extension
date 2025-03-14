pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test(SemanticMutation3 s)
        public
        pure
        returns (uint32 x)
    {
        x = s.test0();
    }
}
