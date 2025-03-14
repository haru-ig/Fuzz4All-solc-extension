pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x.x = 6
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x.x = 6;
    }
}
