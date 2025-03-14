pragma solidity ^0.8.0;
library Lib
{
    function div(uint a, uint b) internal pure returns (uint) {
        return (a / b);
    }
    function mul(uint a, uint b) internal pure returns (uint) {
        return (a * b);
    }
    function getDiv(uint dividend, uint divisor) internal pure returns (uint) {
        return div(dividend, divisor);
    }
}
