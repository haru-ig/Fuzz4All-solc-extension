pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint public semanticallyDistinct = 0;
    function semanticallyEquivalent() {
        semanticallyDistinct += 1;
    }
}
