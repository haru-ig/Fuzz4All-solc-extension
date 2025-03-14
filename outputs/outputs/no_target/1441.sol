pragma solidity ^0.8.0;
contract Semantic0031 {
    function notMutant() public pure returns (uint256) {
        if (true) {
            return 1;
        }
        else {
            return 1;
        }
    }
}
