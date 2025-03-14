pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample2 {
    function main() public pure {
        uint256[] memory values;
        uint256 x;
        values[1] += x;

        x -= 2;
    }
}
