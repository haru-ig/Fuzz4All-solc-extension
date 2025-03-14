pragma solidity ^0.8.0;
contract S9 {
    function multiply_mod(uint x, uint y, uint z) public pure returns(uint a) {
        a = uint(a / 2) / (z - 2);
        return uint(a / 4) * x % z * (z - 1) % z;
    }
}
