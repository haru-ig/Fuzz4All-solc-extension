pragma solidity ^0.8.0;
contract CallerExample19 {
    function add(uint x, uint y) public pure returns (uint z) {
        z = 10 * x + y;
    }

    fallback() external payable {
        uint storageVariable = add(2, 3);
    }
}
