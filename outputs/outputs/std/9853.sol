pragma solidity ^0.8.0;
contract S9 {
    function multiply_mod(uint x, uint y, uint z) private pure returns(uint a) {
        a = (x * y) % z;
        return a;
    }

}
