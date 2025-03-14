pragma solidity ^0.8.0;
contract CallerExample210 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        assembly {
            z := x
            sstore(z, sub(y, x))
        }
    }
}
