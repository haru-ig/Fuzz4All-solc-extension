pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample3 {
    function main() external pure {
        uint256[5] storage values;
        values[2]--;
    }
}
