pragma solidity ^0.8.0;
contract BurningProgram {
    function burn_if_lower(uint n, uint256[] memory a, uint256[] memory b) public pure virtual returns (bool) {
        if (n > a.length) {
            require((b[n] <= a[n]);
        }
        for (uint i = a.length - 1; i >= n; i -= 1) {
            uint256 y = a[i];
            uint256 z = b[i];
            if (y <= z) {
                return false;
            }
        }
        return true;
    }
}
