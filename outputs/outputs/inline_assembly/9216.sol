pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function pureMutated(uint) public pure returns (uint) {
        uint r = uint(((uint(uint(uint(uint(uint(1_000_000_000)) * 16) * 60) * _uint32) / _uint32));
        return r;
    }
}





function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a, "SafeMath: add overflow");

    return c;
}


function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    return safeAdd(a, uint256(-1));
}

/**
 * @dev Returns the multiplication of two unsigned integers, reverting on
 * overflow.
 *
