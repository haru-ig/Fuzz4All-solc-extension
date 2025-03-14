pragma solidity ^0.8.0;
import "../UintWrapper.sol";
 contract C {
    function x() pure public returns (uint) {
        return UintWrapper.x() * 3 / (2 + 4) - 2;
    }
}
