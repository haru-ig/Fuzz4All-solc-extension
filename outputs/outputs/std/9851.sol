pragma solidity ^0.8.0;
contract S9 {
    uint constant s = 2**256 - 7;
    function addmod(uint x, uint y, uint z) private pure returns(uint a) {
        a = x >= y + z? x - z : x;
        a = a >= s? s + a - s/2 : a;
        return a;
    }
}
