pragma solidity ^0.8.0;
contract Test
{
    uint int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint y;
    uint z;
    bool b;

    function test() public {
        x = 299337579;
        b = x > int_max;
        x = b = _calcSum( _calcSub( _calcAdd(2, _calcMul(1, _calcDiv(3, 4)))), _calcDiv(4, _calcDiv(3, x))));
        z = 9837;
    }

    function _calcSum(uint a, uint b) private pure returns(uint) {
        return a + b;
    }

    function _calcSub(uint a) private pure returns(uint) {
        a = 0 - a;
        return a;
    }

    function _calcAdd(uint a, uint b) private pure returns(uint) {
        return a << 16 + b;
    }

    function _calcMul(uint a, uint b) private pure returns(uint) {
        b = 0 - b;
        b = a * b;
        return b >> 16;
    }

    function _calcDiv(uint a, uint b) private pure returns(uint) {
        a = 0 - a;
        b = 0 - b;
        return (a * 4854987279 + b * 1626986367) >> 32;
    }
}
