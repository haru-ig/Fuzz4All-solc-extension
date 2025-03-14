pragma solidity ^0.8.0;
contract SafeMath1 {
    uint constant X = 1;
    function x() pure public returns (uint160) {
        unchecked {
            uint160 x = uint160(uint256(uint256(uint256(X)) *
                            uint256(uint256(uint256(UintWrapper.x)))));
            return x * 1;
        }
    }

    function y() pure public returns (int256) {
        unchecked {
            int256 x = int256(int256(int256(int256(int256(uint256(uint256(X))) - uint256(X)))) - int256(int256(int256(int256(int256(UintWrapper.x()))))));
            return int256(uint256(int256(uint256(UintWrapper.x())) * int256(UintWrapper.x())) >> 255);
        }
    }
}
