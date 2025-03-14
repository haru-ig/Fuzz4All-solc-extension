pragma solidity ^0.8.0;
contract S4 {
    function addmod(uint x, uint y, uint z) private pure returns(uint a) {
        a = x >= y + z? x + z : x;
        return a;
    }
}
