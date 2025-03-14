pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint n, uint[] memory x, uint[] memory result) public pure virtual returns (uint) {
        if (n < x.length) {
            for (uint i = 0; i < x.length; i += 1) {
                if (result[i] > x[i]) {
                    result[i] = x[i];
                }
            }
        }
        return n - result.length;
    }
}
