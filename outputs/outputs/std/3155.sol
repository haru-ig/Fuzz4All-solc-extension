pragma solidity ^0.8.0;

library ArrayMath {


function min(uint256 x, uint256 y) internal pure returns (uint256) {
        return x <= y? x : y;
    }

    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return x >= y? x : y;
    }

    function prod(uint256 x, uint256 y) internal pure returns (uint256) {
        return x * y;
    }

    function sum(uint256 x, uint256 y) internal pure returns (uint256) {
        return x + y;
    }
}

contract Mutations2 {

function sqrt(uint x) public pure returns (uint y) {
    y = x;
      uint256 z = x;
        while( z!= 0) {
        y = z;
        z = x / z;
    }
            return y;
}
}
