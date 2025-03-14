pragma solidity ^0.8.0;
contract Semantic0028 {
    function mutant() public pure returns (uint256, uint256) {
        if (true) {
            return (323, 323);
        }
        else {
            return (323, -1);
        }
    }
}
