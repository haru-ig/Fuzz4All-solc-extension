pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint n, uint[] memory a, uint[] memory b) public pure virtual returns (bool) {
        if (n < a.length) {
            require(b[n] <= a[n]);
        }
        for (uint i = 0; i < a.length; i += 1) {
            uint x = a[i];
            uint z = (2 ^ 32) * b[i];
            if (x >= z) {
                return false;
            }
        }
        return true;
    }
}
