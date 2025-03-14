pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    constructor()
    {
    }

    function subtract() public returns (uint256) {
        uint256 a;
        a = 1;
        return subtract(a);
    }

    function subtract(uint256 a) public returns (uint256) {
        uint256 b;
        b = 1;
        return b - a;
    }
}
