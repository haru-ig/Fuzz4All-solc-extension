pragma solidity ^0.8.0;
library SafeMath {
    function tryMultiply(uint x, uint y) internal pure returns (bool, uint z) {
        (bool success, z) = x * y;
        if(!success) return (success, 0);
    }
}

function safeMultiply(uint256 x, uint256 y) public pure returns(uint256) {
    return uint256(SafeMath.tryMultiply(x,y));
}
