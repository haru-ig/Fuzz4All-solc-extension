pragma solidity ^0.8.0;
library IntegerOverflow{
    uint constant public MAX_UNSIGNED = 1e6 + 64;
    function addOverflowSafe(uint x, uint y) internal pure returns (uint){
        uint z = x + y;
        require( x < MAX_UNSIGNED && y < MAX_UNSIGNED);
        return z;
    }
}
