pragma solidity ^0.8.0;
contract New {
    function getValue(uint256 index) public pure returns (uint256[2]) {
        return index < 3? [ 2, 3 ] : [ 2, 3 ];
    }
}
