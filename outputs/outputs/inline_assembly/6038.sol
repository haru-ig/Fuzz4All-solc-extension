pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    uint256[75] values;
    function main() public pure {
        values[2] = 123;
    }
}
