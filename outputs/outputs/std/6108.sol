pragma solidity ^0.8.0;
library Math {

    function min(uint32 x, uint32 y) internal pure returns (uint32 result) {
        return x <= y? x : y;
    }


    function max(uint32 x, uint32 y) internal pure returns (uint32 result) {
        return x >= y? x : y;
    }
}
