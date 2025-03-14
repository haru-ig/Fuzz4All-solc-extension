pragma solidity ^0.8.0;
contract Int128 {
    uint256 internal valHi;
    uint256 internal valMid;
    uint256 internal valLo;
    constructor (uint256 high, uint256 middle, uint256 low) public {
        valHi = high;
        valMid = middle;
        valLo = low;
    }
    function add (uint256 x) public pure returns (uint256) {
        uint256 y = valHi + x + (valLo < x? 0 : 1);
        valHi = y / 2**256;
        valMid = y;
        valLo = x;
        return y;
    }
    function sub (uint256 x) public pure returns (uint256) {
        uint256 y = valHi - x + (valMid < x? 0 : 1);
        valHi = y / 2**256;
        valMid = y;
        valLo = x;
        return y;
    }
    function mul (uint256 x) public pure returns (uint256) {
        uint256 m;
        assembly {

            m := and(div(mul(x, 0x800000000000000000000000000000000), 0x100000000000000000000000000000000000), div(0xffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000fffffffc));
        }
        valMid = (valHi * valLo) + (valMid * m);
        valHi = m / 2**256;
        valLo = x;
        return valMid;
    }
    function div_int_uint(uint256 x, uint256 y) public pure returns (uint256 dividend) {
        uint256 rem;
        assembly {
            rem:=div(mul(x,0x8000000000000000000000000000000000), y);
        }
        dividend = rem;
    }
    function div (uint256 x, uint256 y) public pure returns (uint256) {
        require(y > 1, "division-by
