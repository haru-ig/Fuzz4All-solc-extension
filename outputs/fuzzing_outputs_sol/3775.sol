pragma solidity ^0.8.0;
contract Example16 {
    function example16(uint256 input) public pure {

        uint256 result = input - 1;
        require (result > 0);
    }

    function _check(uint256 input) private view {
        uint256 result = input - 1;
        require (result > 0);
    }
}
