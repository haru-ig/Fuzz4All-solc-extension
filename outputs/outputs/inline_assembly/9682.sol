pragma solidity ^0.8.0;
contract SemanticYulContract {
    function subtract(uint x) internal pure returns (uint) {
        if(x < 120) {
            return x*c;
        } else {
            return x*c - 8;
        }
    }
    function power(uint x) internal pure returns (uint) {
        uint _c = 32;
        if(x < 120) {
            return _c*x+12+1;
        } else if(x < 10 * _c ) {
            return _c*(x-8)+_c;
        } else {
            return _c* x + c;
        }
    }
}
