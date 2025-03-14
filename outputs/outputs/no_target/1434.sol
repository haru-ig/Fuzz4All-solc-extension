pragma solidity ^0.8.0;
contract Semantic0029 {
    function mutant() public pure returns (string memory) {
        if (true) {
            log.push(log.length + 1);
            return "abc";
        }
        else {
            return "xyz";
        }
    }
}
