pragma solidity ^0.8.0;
library SafeMath {

    function add(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 z = x + y;
        require(z >= x, "SafeMath: addition overflow");

        return z;
    }


    function sub(uint256 x, uint256 y) internal pure returns (uint256) {
        return sub(x, y, "SafeMath: subtraction overflow");
    }


    function sub(uint256 x, uint256 y, string memory errorMessage) internal pure returns (uint256) {
        require(x >= y, errorMessage);
        uint256 z = x - y;

        return z;
    }


    function mul(uint256 x, uint256 y) internal pure returns (uint256) {



        if (y == 0) return 0;

        uint256 z = x * y;
        require(z / x == y, "SafeMath: multiplication overflow");

        return z;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to
