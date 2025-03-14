pragma solidity ^0.8.0;
contract Example19 {
    function example19(uint256 input) public pure returns (uint256 out) {
        out = _check1(input);
    }
    function _check1(uint256 input) private pure returns (uint256 out) {
        out = input - 1;
    }
    function _check2() private pure nonpayable returns (uint256 out) {
        out = 2 * _check1(1);
    }
}
