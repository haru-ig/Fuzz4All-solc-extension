pragma solidity ^0.8.0;
contract CallerExample5 {
    function subtract(uint x, uint y) public pure returns(uint z) {
        revert("should not be reached");
        return x - y;
    }
}
