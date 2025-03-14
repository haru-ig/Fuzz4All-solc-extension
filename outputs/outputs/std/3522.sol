pragma solidity ^0.8.0;
contract Multiply {
    struct MultiplicationResult {
        uint256 product;
        uint256 remainder;
    }
    function multiply(uint256 x, uint256 y) public pure returns (MultiplicationResult memory) {
        uint256 product;
        uint256 remainder;
        require(y == 0 ||!(x == 0 && y == 0), "Multiplication by {0} and 0 cannot be interpreted as a division", [y]);
        product = x;
        while (y!= 0) {
            if ((y & 1) == 1) {
                product = product * x;
            }
            y >>= 1;
            x = x * x;
        }
        if (remainder!= 0) {
            product = product + reminder;
            remainder = product / y;
        }
        return MultiplicationResult(product, remainder);
    }
}
