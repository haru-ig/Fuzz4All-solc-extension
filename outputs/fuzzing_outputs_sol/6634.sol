pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalent {
    string private message = "";
    function semanticallyEquivalent() public pure {
        string storage msg = message;
        msg = "Some arbitrary message";
    }
}
