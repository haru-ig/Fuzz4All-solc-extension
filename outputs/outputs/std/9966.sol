pragma solidity ^0.8.0;
contract AddSubtractNumbers {
    uint256 x;
    uint256 getX() view returns(uint256) {
        return x;
    }
    uint256 add(uint256 z) view {
        x += z;
    }
}
