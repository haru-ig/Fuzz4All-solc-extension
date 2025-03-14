pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint n, uint[] memory a, uint[] memory b) public pure virtual returns (bool) {
        bool result;
        if (n < a.length) {
            require(b[n] <= a[n]);
        } else {
            bool exists = false;
            for (uint i = 0; i < a.length; i += 1) {
                uint x = a[i];
                uint z = (2 ^ 32) * b[i];
                if (x >= z) {
                    return false;
                }
                exists = true;
            }
            require(exists);
            n = a.length;
            b[n - 1] += 1;
        }
        for (uint i = 0; i < a.length; i += 1) {
            uint z = (2 ^ 32) * b[i];
            result |= (a[i] >= z);
        }
        return result;
    }
}

pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint n, uint[] memory a, uint[] memory b) public pure virtual returns (bool) {
        for (uint i = 0; i < a.length; i += 1) {
            uint x = a[i];
            uint z = (2 ^ 32) * b[i];
            if (x >= z) {
                throw;
            }
        }
        return true;
    }
}
