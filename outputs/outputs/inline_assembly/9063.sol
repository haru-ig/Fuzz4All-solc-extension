pragma solidity ^0.8.0;
library Lib {
    struct Complex {
        uint w;
        uint x;
        uint y;
        function multiply(uint x) public returns(uint) {
            return (x * x);
        }
    }
    function sum(Complex x) public pure returns (uint) {
        return (x.w + x.x + x.y);
    }
}
