pragma solidity ^0.8.0;
contract CallerExample19 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        assembly {
            z := sub(x,y)
        }
    }
}
