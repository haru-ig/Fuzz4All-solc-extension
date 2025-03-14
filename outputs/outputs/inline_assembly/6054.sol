pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample4 is MutatedSemanticallyEquivalentAssemblyExample3 {
    function main() public pure {
        uint256 x;
        x += values[0];
    }
}
