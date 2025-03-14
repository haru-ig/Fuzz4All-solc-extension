pragma solidity ^0.8.0;
contract TestMutated682 {
    function sub(uint x, uint y) public pure returns (uint) {
        if (y > 0) {
            return x - 2;
        }
        return x - y;
    }
}
