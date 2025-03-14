pragma solidity ^0.8.0;
contract CoB{
    uint x;
    event E(uint _x);
    function h(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        uint b0 = b;
        uint i = 0;
        i++; b= a/i;
        if (22 < i) {
            assert(c < 0);
        } else {
            b = a&b0;
            assert(x > c);
            emit E(a);
            b = a+b0;
        }
        i++;
        i--; i--;
        assert(i == 5);
        b = b+b0+b0;
        return (a, b, c);
    }
    function o() public pure {
        uint b = 0;
        uint b0 = b;
        b = b+b0;
        uint i;
        i++; b= +b;
        IForLoop f;
    }
}
