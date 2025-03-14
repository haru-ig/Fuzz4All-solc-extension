pragma solidity ^0.8.0;
contract CallerExample7 {

    function addValues(uint x, uint y) public pure returns (uint z) {
        z = x + y;
    }

    function subtractValues(uint x, uint y) public pure returns (uint z) {
        z = y - x;
    }

    function subtractSum(uint x, uint y) public pure returns (uint z) {
        z = y - x - x;
    }
}
