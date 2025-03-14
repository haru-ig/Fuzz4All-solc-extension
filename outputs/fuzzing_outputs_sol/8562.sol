pragma solidity ^0.8.0;
contract CallerExample20 {
    fallback (uint x, uint y) public pure returns (uint z) {
        assembly {
            z := sub(y, x)
        }
    }
}
