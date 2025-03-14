pragma solidity ^0.8.0;

library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {



        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }


    function div(uint256 a, uint256 b) internal pure returns (uint256) {

        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;


        return c;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }


    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
}
/**
 * @title SafeERC20 - Common logic for safe token operations.
 *
 * *Note:* the SafeERC20 library allows children to implement an interface that
 * can be installed on their contracts to modify their contract with safe functions.
 * This allows for scenarios where a contract is interposed, or an externally
 * owned contract can be modified with ease. This is an alternative to using
 * I
