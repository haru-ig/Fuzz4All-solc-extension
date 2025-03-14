pragma solidity ^0.8.0;
contract RevertTestSemanticallyEquivalent2 {
    uint160 constant uint160Max = 10**251 - 1;
    uint x = 0;
    function max()
        public pure
        returns (uint x)
    {

        x = uint128(uint160Max) + 1;
    }
}
