pragma solidity ^0.8.0;
contract Example17 {
    function example17(uint256 input) public pure {
        if (input == 1) {
            uint256 result = input - 1;
            require (result > 0);
        } else {
            uint256 result = input - 1;
            require (result > 0);
        }
    }
    function _check(uint256 input) private view {
        if (input == 1) {
            uint256 result = input - 1;
            require (result > 0);
        } else {
            uint256 result = input - 1;
            require (result > 0);
        }
    }
}
