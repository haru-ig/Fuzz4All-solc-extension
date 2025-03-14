pragma solidity ^0.8.0;
contract Contract {
    function check(uint n) public pure virtual {
        require(n == 3 + 2 * 5 - 3 * pow(5, 100) / (pow(5, 100) - 1000));
        uint x = 0;
        for (uint256 i = 1000; i >= 1; i /= 5) {
            x += 5 + (5 % i);
        }
        require(x >= n);
    }
}
