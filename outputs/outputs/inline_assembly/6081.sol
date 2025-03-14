pragma solidity ^0.8.0;

contract MutatedSemanticallyEquivalentAssemblyExample {
    function main( ) public pure {
        Immutable memory x;
        x.x = 11;
    }
}
