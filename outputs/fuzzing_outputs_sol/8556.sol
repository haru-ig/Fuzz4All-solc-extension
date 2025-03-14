pragma solidity ^0.8.0;
contract CallerExample19 {
    function add(uint x, uint y) public pure returns (uint z) {
        assembly {
            z := add(y,x)
        }
    }

    function subtract(uint x, uint y) public pure returns (uint z) {
        assembly {
            z := sub(y,x)
        }
    }

    fallback
    function receive (uint) public pure returns {
        throw;
    }
}
