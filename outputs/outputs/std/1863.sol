pragma solidity ^0.8.0;
contract Mutate2_01 {
    function subtract(uint x, uint y) internal pure returns (uint z) {
        require(x < y && y >= 0, "SubtractError");
        return x - y;
    }
}
