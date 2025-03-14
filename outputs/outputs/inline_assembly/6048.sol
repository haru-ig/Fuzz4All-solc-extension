pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample3 {
    uint256[2] a;
    function main() public pure {
        a[2]--;
    }
}
