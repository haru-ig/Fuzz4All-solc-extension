pragma solidity ^0.8.0;
contract SafeMath {
    function add (uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    function sub (uint256 a, uint256 b) public pure returns (uint256) {
        if (b > a) {
            return 0;
        } else {
            return a - b;
        }
    }
    function mul (uint256 a, uint256 b) public pure returns (uint256) {
        if (a == 0) {
            return 0;
        } else {
            return a * b;
        }
    }
    function div (uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }
    }

contract Modification {
    function mod(address a, uint256 b) public pure returns(uint256) {
        if (b == 0) {
            return 0;
        } else {
            return a % b;
        }
    }
}
