pragma solidity ^0.8.0;
contract CallerExample20 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        (z, ) = (x, y);
    }
}
