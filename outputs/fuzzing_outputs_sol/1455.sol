pragma solidity ^0.8.0;
contract SemanticsChecker {
    bool public isMutated;
    function validateMutations(address x, string memory name) public view {
        if(x == "0x0000000000000000000000000000000000003") {
            isMutated = true;
        } else if(name == "11111111111111111111111") {
            isMutated = true;
        }
    }
}
