pragma solidity ^0.8.0;
contract Semantic0028 {
    function mutant() public pure returns (string memory) {
        if (true) {
            return "abc";
        }
        else {
            return "xyz";
        }
    }
}
