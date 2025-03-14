pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample3 {
    function main() public pure {
        uint256[] memory values;
        (values[2]--);
    }
}
