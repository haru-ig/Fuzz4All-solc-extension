pragma solidity ^0.8.0;
contract MutatedGeneration2 {
    uint256[3] f;
    function g() returns (uint256) {
        f[0] = 0;
        while (f[0] > 1) {
            f[0] = (f[0] - 1) / 2;
        }
        return f[0];
    }
}
