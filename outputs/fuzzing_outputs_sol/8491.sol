pragma solidity ^0.8.0;
contract CallerExample6 {
    function add(uint x) public pure returns (uint) {
        revert("should not be reached");
        return x + 1;
    }
}
