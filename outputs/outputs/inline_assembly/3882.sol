pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
    function callWithNoReturn() public pure {
        assembly {
            return
            }
    }
}
