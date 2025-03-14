pragma solidity ^0.8.0;
contract BetterCase13 {
    function multiply(uint[5][5][5] memory a, uint[6] memory b) public pure returns (uint) {
        return a[0][0][1] * b[0];
    }
}
