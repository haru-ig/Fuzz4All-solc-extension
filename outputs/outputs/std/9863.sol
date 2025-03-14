pragma solidity ^0.8.0;
contract S9 {
    function subtract_mod(uint x, uint y, uint z) public pure returns(uint a) {
        a = (x - y) % z;
    }
}
