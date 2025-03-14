pragma solidity ^0.8.0;
contract CallerExample6 {
    function subtract(uint x, uint y) public pure returns(uint z) {
        return subtract(y, x);
    }
}
