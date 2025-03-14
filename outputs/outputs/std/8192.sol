pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint x) pure public returns(uint y) {
        uint r = (x + 1) / 2;
        while (x > r) {
            x = x - y;
            r = (x + y) / 2;
        }
        y = r;
    }
    function divide(uint x, uint divisor) pure public returns(uint y) {
        require(divisor == 0 || divisor!= 1, "divisor is 0 or 1.");
        if (divisor == 0) {
            y = 1;
        } else if (x < 0) {
            y = uint(-1) * (-x)/divisor;
        } else {
            y = uint(x)/divisor;
        }
    }
}
