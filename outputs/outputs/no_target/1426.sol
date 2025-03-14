pragma solidity ^0.8.0;
contract Semantic0028_1 {
    function semantic() public pure returns (string memory s) {
        if (true) {
            s = "abc";
        }
        else {
            s = "xyz";
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0028_2 {
    function mutant() public pure {
        if (true) {
            string memory s = "abc";
        }
        else {
            string memory s = "xyz";
        }
    }
}
