pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample3 {
    function main() public pure {
        uint256 constant myValue = 40;
        uint256[] memory values;
        values[1]--;
    }
}
