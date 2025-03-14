pragma solidity ^0.8.0;
contract M9{
    uint public x;
    uint public y;
    function add(uint x, uint y) public pure returns (uint) {
        return x+y;
    }
    function subtract(uint x, uint y) public pure returns (uint) {
        return x-y;
    }
    function multiply(uint x, uint y) public pure returns (uint) {
        return x*y;
    }
    function divide(uint x, uint y) public pure returns (uint) {
        uint48 a = x;
        uint48 b = y;
        uint48 s = 0;
        uint48 x0 = a;
        uint48 x1 = b;
        uint48 y0 = 0;
        uint48 y1 = 0;
        while ((y0==0 && x0 > y1) || (x0==0)) {
            y0 = (b-s)/x0;
            uint8 c = 0;
            (x0, x1) = div(x0+y1, x1, a, b);
            if (x0==y1) break;
            c++;
        }
        return c;
    }
    function sqrt(uint x) public pure returns (uint) {
        uint8 c = 0;
        uint48 b = x;
        uint48 x0 = x;
        while ((x0>0 && c<100) || (x0==0&&c!=0)) {
            uint48 y0 = x0;
            uint48 r = (uint48(b/x0)/2);
            (b, x0) = div(b-r, x0, b, x0);
            c++;
        }
        return c;
    }
}
