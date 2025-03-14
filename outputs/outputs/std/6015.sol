pragma solidity ^0.8.0;
library Division {
    function safeDivide(uint a, uint b) internal pure returns (uint) {
        require(b > 0);
        return a / b;
    }
}
