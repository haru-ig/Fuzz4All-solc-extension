pragma solidity ^0.8.0;
contract Example18 {
    function example18(uint256 input) public pure returns (uint256 out) {
        out = _check(input);
    }
    function _check(uint256 input) private pure returns (uint256 out) {
        out = input - 1;
    }
}
