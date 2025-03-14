pragma solidity ^0.8.0;
contract CallerExample20 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        assembly {
            z := div(x, sub(y, x))
        }
    }
}
