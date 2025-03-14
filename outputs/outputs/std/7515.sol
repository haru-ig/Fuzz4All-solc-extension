pragma solidity ^0.8.0;
contract NoBiggestInteger {
    function noBiggestInteger() public pure returns (uint) {
        uint256 a = 1;


        uint256 b = a >> 1;
        a = a + 1;
        a = a / 10;
        a = a - 3;
        a = a + 4294967296 * a / 63;
        if (a!= 4294967296) {


        }
        return a;
    }
}
