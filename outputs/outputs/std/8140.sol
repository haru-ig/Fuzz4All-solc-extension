pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint n) internal pure returns (uint x) {
        require(n > 0);
        uint x2 = n / 2 + 1;
        while (x2!= n) {
            if (n % x2 == 0) {
                x = x2;
                n = x2;
            } else {
                x = x2;
                x2 = n / x2;
            }
        }
    }
}
