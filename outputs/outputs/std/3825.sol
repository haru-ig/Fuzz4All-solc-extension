pragma solidity ^0.8.0;
contract ComplexNumbers {
    using BasicArithmetic for uint256;
    using BasicArithmetic for uint128;

    uint256 public constant two = 2 ** 255;

    bool public status;

    string public numberString;

    constructor() {
        numberString = "1234567890";

        status = true;


    }
    modifier numberCheck() {
        require(status, "You have not yet entered your number!");
        _;
    }

    uint256 public constant one = 1;
    function multiply(uint256 x, uint256 y) public view returns (uint256) { return x * y; }
    function divide(uint256 x, uint256 y) public view returns (uint256) { return x / y; }
    function add(uint256 x, uint256 y) public view returns (uint256) { return multiply(x, two) + x; }
    function max(uint256 x, uint256 y) public view returns (uint256) { return max(add(x, one), add(y, one)); }
    function min(uint256 x, uint256 y) public view returns (uint) { return min(add(x, one), add(y, one)); }
    function maxSubtraction(uint256 x, uint256 y) public pure returns (uint256) {
        return max(x, y) - one;
    }
    function minSubtraction(uint256 x, uint256 y) public pure returns (uint256) {
        return min(x, y) - one;
    }

    function maxMultiplication(uint256 x) public pure returns (uint256) {
        return max(x, zero());
    }

    function minMultiplication(uint256 x) public pure returns (uint256) {
        return min(x, zero());
    }

    function maxDivision(uint256 x) public pure returns (uint256) {
        return max(x, one());
    }

    function minDivision(uint2
