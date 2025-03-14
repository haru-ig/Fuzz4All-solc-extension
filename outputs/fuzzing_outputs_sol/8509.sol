pragma solidity ^0.8.0;
contract CallerExample7 {
    function subtract(uint x, uint y) public pure returns(uint z) {
        z = subtract(y, x);
    }
}
