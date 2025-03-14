pragma solidity ^0.8.0;
contract Solidity
{
    function divideEvenBy(uint128 numerator, uint128 denominator) private pure returns (uint128)
    {
        require(denominator!= 0);
        uint128 remainder;
        uint128 quotient;
        remainder = numerator % denominator;
        quotient = numerator / denominator;
        require(quotient == remainder * denominator + numerator % denominator == 0, "Something went wrong");
        return quotient;
    }
    function isEvenByFour(uint128 numerator) public pure returns (bool) {
        return divideEvenBy(numerator, 4)==2;
    }
}
