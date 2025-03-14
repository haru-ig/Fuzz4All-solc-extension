pragma solidity ^0.8.0;
contract SquareSumUp {
    uint16 x;
    uint16 y;
    uint8 z;

    function add(uint256 a, uint256 b) public view returns (uint256) {
        return a + b;
    }
    function subtract(uint256 a, uint256 b) public view returns (uint256) {
        return a - b;
    }
    function multiply(uint256 a, uint256 b) public view returns (uint256) {
        return a * b;
    }
    function divide(uint256 a, uint256 b) public view returns (uint256, uint256) {
        (uint256 s, uint256 r) = div(a, b);
        return (s, r);
    }
    function div(uint256 a, uint256 b) public pure returns (uint256, uint256) {
        require(b > 0, 'SquareSumUp: cannot divide by 0');
        uint256 commonDivisor = divisor(b, a);
        (uint256 quotient, uint256 remainder) = (a / commonDivisor, a % commonDivisor);
        (uint256 quotient_, uint256 remainder_) = (quotient / b, quotient % b);
        return (quotient_, remainder_);
    }
    function addArray(uint16 addX, uint16 addY) public view returns (uint16) {
        return addX + addY;
    }
}
