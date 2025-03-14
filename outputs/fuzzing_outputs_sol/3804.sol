pragma solidity ^0.8.0;
contract Example19 {
    function example19(uint256 input) public pure returns (uint256 out) {
        revert(_check(input));
    }
    function _check(uint256 input) private pure  {
        require(input == 2, "Failed");
        return input - 1;
    }
}
