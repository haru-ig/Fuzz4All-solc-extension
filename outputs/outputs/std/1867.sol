pragma solidity ^0.8.0;
interface MutateInterface {
    function add(uint256 x, uint256 y) external;
}
interface MutateInterface {
    function subtract(uint256 x, uint256 y) external;
}

library SafeMath {

    function add(uint256 x, uint256 y) internal pure returns(uint256 z) {
        require((z = x + y) >= x, "SafeMath_add_overflow");
    }

    function subtract(uint256 x, uint256 y) internal pure returns(uint256 z) {
        return sub(x, y, "SafeMath_sub_underflow");
    }

    function sub(uint256 x, uint256 y, string memory errorMessage) internal pure returns(uint256 z) {
        require((z = x - y) >- y, errorMessage);
    }

    function multiply(uint256 x, uint256 y) internal pure returns(uint256 z) {
