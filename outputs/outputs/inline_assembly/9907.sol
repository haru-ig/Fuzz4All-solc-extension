pragma solidity ^0.8.0;
library SafeMath {
    function tryMultiply(uint256 x, uint256 y) internal pure returns (bool, uint256){
        uint256 z = x * y;
        if(z / x!= y) return (false, z);
        return (true, z);
    }
}
