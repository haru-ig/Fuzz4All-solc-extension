pragma solidity ^0.8.0;
contract TestMutated412 {
    function mul(uint x, uint n) public pure returns (uint) {
        if (uint(x) * n < x) {
            return uint(x / n - 1);
        }
        return uint(x / n) * n;
    }
}
