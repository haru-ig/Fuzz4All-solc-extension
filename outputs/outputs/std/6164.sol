pragma solidity ^0.8.0;
contract MutatedSemanticallyNotEquivalent9 {
    function f() public pure {
        SemanticallyNotEquivalent9();
    }
}
