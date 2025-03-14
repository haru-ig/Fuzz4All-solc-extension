pragma solidity ^0.8.0;
library SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        unchecked {
            c = a * b;
            require(c / a == b, "Math: multiplication overflow");
        }
    }
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            if (a == 0) {
                return 0;
            }
            c = a / b;
            require(c * b == a, "Math: division by zero");
        }
    }
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            require(b <= a, "Math: subtraction overflow");
            return a - b;
        }
    }
    function min128(uint128 a, uint128 b) internal pure returns (uint128 x) {
        if (a >= b) {
            return a;
        }
        return b;
    }
    function max128(uint128 a, uint128 b) internal pure returns (uint128 x) {
        require(b <= a);
        return a;
    }
    function min64(uint64 a, uint64 b) internal pure returns (uint64 x) {
        require(b <= a, "Math: subtraction overflow");
        return a;
    }
    function max64(uint64 a, uint64 b) internal pure returns (uint64 x) {
        if (a >= b) {
            return a;
        }
        return b;
    }
}
contract Mintable {
  event Mint(address indexed to, uint256 amount);
  event
