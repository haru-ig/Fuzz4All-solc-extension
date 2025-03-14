pragma solidity ^0.8.0;
contract Bar {
    function bar(uint32 x) public pure returns (uint32) {
        return x * 2;
    }
    function bar1(uint32 x, uint32 y) public pure returns (uint32 z) {
        return uint32(uint64(uint32(x) + uint32(y)));
    }
}





pragma solidity ^0.8.0;


library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {

        require(a!= 0);

        uint256 c = a + b;
        require(c >= a);

        return c;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow
