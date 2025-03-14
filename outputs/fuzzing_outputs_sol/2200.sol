pragma solidity ^0.8.0;
import "./Mutater118.sol";
class MutatedExample118 {
    function div_mut(uint128 x, uint128 y) public view returns(uint128) {
        uint128 z = (x + (y >> 1)) / y;
        return z;
    }
}
