pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint n, uint256[] memory a, uint256[] memory b) public pure virtual returns (bool) {
        if (n < a.length) {
            require(b[n] <= a[n]);
        }
        for (uint i = 0; i < a.length; i += 1) {
            uint256 y = a[i];
            uint256 z = b[i];
            if (y >= z) {
                return true;
            }
        }
        return false;
    }
}
