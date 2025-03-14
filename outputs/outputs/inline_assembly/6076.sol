pragma solidity ^0.8.0;
struct Mutable {
    uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        Mutable memory y = (new Mutable()).x();
    }
}
