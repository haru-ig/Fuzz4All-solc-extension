pragma solidity ^0.8.0;
contract CallerExample6 {
    function subtract(uint x, uint y) public view returns(uint z) {
        revert("should not be reached");
        return x - y;
    }
}
