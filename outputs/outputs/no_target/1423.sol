pragma solidity ^0.8.0;
contract Semantic0028_0 {
    function mutant() public pure returns (string memory m) {
        if (true) {
            m = "abc";
        }
        else {
            m = "xyz";
        }
    }
}
