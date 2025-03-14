pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity92 {
    function mutatorTest23(address a, address b, uint256 c) public {
        uint256 x = a + b + (
            (c) /
            (2) *
            (2)
        );
    }
    function mutatorTest24(uint256 a, uint256 b, uint256 c) public {
        uint256 x = (a >> b) + (
            (c / 2) + 2 /
            (2 * 2)
        );
    }
}
