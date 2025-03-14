pragma solidity ^0.8.0;
contract TestMutated659 {
    function div(uint x, uint y) public pure returns (uint) {
        if (y > 0) {
            return x + 1;
        }
        return x + y;
    }
}
