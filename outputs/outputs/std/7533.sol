pragma solidity ^0.8.0;
contract SemanticallyEquivalency {
    function semanticallyEquivalency() public pure returns (uint) {
        uint x = 10;
        uint256 b = 2;
        b = b + x;
        x = b * x;
        x = x + 2;
        b = x / b;
        return (b);
    }
}
